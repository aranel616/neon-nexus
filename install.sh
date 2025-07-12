#!/bin/bash

# Neon Nexus Installation Script
# Cyberpunk Linux Desktop Theme

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

# ASCII Art Header
cat << "EOF"
███╗   ██╗███████╗ ██████╗ ███╗   ██╗    ███╗   ██╗███████╗██╗  ██╗██╗   ██╗███╗   ███╗
████╗  ██║██╔════╝██╔═══██╗████╗  ██║    ████╗  ██║██╔════╝╚██╗██╔╝██║   ██║████╗ ████║
██╔██╗ ██║█████╗  ██║   ██║██╔██╗ ██║    ██╔██╗ ██║█████╗   ╚███╔╝ ██║   ██║██╔████╔██║
██║╚██╗██║██╔══╝  ██║   ██║██║╚██╗██║    ██║╚██╗██║██╔══╝   ██╔██╗ ██║   ██║██║╚██╔╝██║
██║ ╚████║███████╗╚██████╔╝██║ ╚████║    ██║ ╚████║███████╗██╔╝ ██╗╚██████╔╝██║ ╚═╝ ██║
╚═╝  ╚═══╝╚══════╝ ╚═════╝ ╚═╝  ╚═══╝    ╚═╝  ╚═══╝╚══════╝╚═╝  ╚═╝ ╚═════╝ ╚═╝     ╚═╝

                        Cyberpunk Linux Desktop Theme Installer
EOF

echo -e "${CYAN}================================================================${NC}"
echo -e "${YELLOW}Welcome to Neon Nexus - Cyberpunk Desktop Theme Installation${NC}"
echo -e "${CYAN}================================================================${NC}"
echo ""

# Function to print colored output
print_status() {
    echo -e "${GREEN}[INFO]${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}[WARNING]${NC} $1"
}

print_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

print_step() {
    echo -e "${BLUE}[STEP]${NC} $1"
}

# Check if script is run as root
if [[ $EUID -eq 0 ]]; then
   print_error "This script should not be run as root!"
   exit 1
fi

# Function to check if a command exists
command_exists() {
    command -v "$1" >/dev/null 2>&1
}

# Function to backup existing configs
backup_configs() {
    print_step "Creating backup of existing configurations..."
    
    BACKUP_DIR="$HOME/.config/neon-nexus-backup-$(date +%Y%m%d_%H%M%S)"
    mkdir -p "$BACKUP_DIR"
    
    for config in hypr waybar mako; do
        if [[ -d "$HOME/.config/$config" ]]; then
            print_status "Backing up $config configuration..."
            cp -r "$HOME/.config/$config" "$BACKUP_DIR/"
        fi
    done
    
    print_status "Backup created at: $BACKUP_DIR"
}

# Function to check dependencies
check_dependencies() {
    print_step "Checking dependencies..."
    
    local missing_deps=()
    
    # Core dependencies
    if ! command_exists hyprland; then
        missing_deps+=("hyprland")
    fi
    
    if ! command_exists waybar; then
        missing_deps+=("waybar")
    fi
    
    if ! command_exists mako; then
        missing_deps+=("mako")
    fi
    
    # Optional but recommended
    if ! command_exists kitty; then
        print_warning "kitty terminal not found - some app-specific theming may not work"
    fi
    
    if ! command_exists wofi; then
        print_warning "wofi launcher not found - some features may not work"
    fi
    
    if [[ ${#missing_deps[@]} -gt 0 ]]; then
        print_error "Missing required dependencies: ${missing_deps[*]}"
        echo ""
        echo "Please install the missing packages:"
        echo "Arch Linux: sudo pacman -S ${missing_deps[*]}"
        echo "Ubuntu/Debian: sudo apt install ${missing_deps[*]}"
        echo ""
        exit 1
    fi
    
    print_status "All dependencies satisfied!"
}

# Function to install font
install_font() {
    print_step "Checking for Fira Code font..."
    
    if fc-list | grep -q "Fira Code"; then
        print_status "Fira Code font already installed"
    else
        print_warning "Fira Code font not found. Installing..."
        
        # Try to install via package manager
        if command_exists pacman; then
            sudo pacman -S --noconfirm ttf-fira-code 2>/dev/null || print_warning "Could not install Fira Code via pacman"
        elif command_exists apt; then
            sudo apt install -y fonts-firacode 2>/dev/null || print_warning "Could not install Fira Code via apt"
        else
            print_warning "Please manually install Fira Code font for best experience"
        fi
    fi
}

# Function to install configurations
install_configs() {
    print_step "Installing Neon Nexus configurations..."
    
    # Ensure config directory exists
    mkdir -p "$HOME/.config"
    
    # Install each configuration
    for config in hypr waybar mako; do
        if [[ -d "configs/$config" ]]; then
            print_status "Installing $config configuration..."
            cp -r "configs/$config" "$HOME/.config/"
        else
            print_error "Configuration directory configs/$config not found!"
            exit 1
        fi
    done
    
    print_status "Configurations installed successfully!"
}

# Function to set permissions
set_permissions() {
    print_step "Setting proper permissions..."
    
    # Make sure config files are readable
    chmod -R 644 "$HOME/.config/hypr"/* 2>/dev/null || true
    chmod -R 644 "$HOME/.config/waybar"/* 2>/dev/null || true
    chmod -R 644 "$HOME/.config/mako"/* 2>/dev/null || true
    
    # Make hyprland config executable if needed
    chmod 755 "$HOME/.config/hypr" 2>/dev/null || true
    
    print_status "Permissions set correctly!"
}

# Function to reload services
reload_services() {
    print_step "Reloading services..."
    
    # Kill existing waybar and mako instances
    pkill waybar 2>/dev/null || true
    pkill mako 2>/dev/null || true
    
    # Start new instances
    waybar &
    mako &
    
    # Reload Hyprland if running
    if pgrep hyprland >/dev/null; then
        print_status "Reloading Hyprland configuration..."
        hyprctl reload 2>/dev/null || print_warning "Could not reload Hyprland - restart may be needed"
    fi
    
    print_status "Services reloaded!"
}

# Function to show completion message
show_completion() {
    echo ""
    echo -e "${CYAN}================================================================${NC}"
    echo -e "${GREEN}✓ Neon Nexus Installation Complete!${NC}"
    echo -e "${CYAN}================================================================${NC}"
    echo ""
    echo -e "${YELLOW}Next Steps:${NC}"
    echo "1. Restart Hyprland if configuration doesn't appear immediately"
    echo "2. Check out the documentation in docs/ directory"
    echo "3. Customize colors in ~/.config/waybar/style.css and ~/.config/hypr/hyprland.conf"
    echo "4. Take some screenshots and share your desktop!"
    echo ""
    echo -e "${BLUE}Useful Commands:${NC}"
    echo "• Reload Hyprland: hyprctl reload"
    echo "• Restart Waybar: pkill waybar && waybar &"
    echo "• Restart Mako: pkill mako && mako &"
    echo ""
    echo -e "${PURPLE}Enjoy your cyberpunk desktop! 🚀${NC}"
    echo ""
}

# Main installation function
main() {
    # Check if we're in the right directory
    if [[ ! -f "README.md" ]] || [[ ! -d "configs" ]]; then
        print_error "Please run this script from the neon-nexus-dim directory"
        exit 1
    fi
    
    echo -e "${YELLOW}This script will install the Neon Nexus cyberpunk theme${NC}"
    echo -e "${YELLOW}Your existing configurations will be backed up${NC}"
    echo ""
    read -p "Do you want to continue? (y/N): " -n 1 -r
    echo ""
    
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        echo "Installation cancelled."
        exit 0
    fi
    
    echo ""
    
    # Run installation steps
    check_dependencies
    backup_configs
    install_font
    install_configs
    set_permissions
    reload_services
    show_completion
}

# Run main function
main "$@"