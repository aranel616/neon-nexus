" 
" ███╗   ██╗███████╗ ██████╗ ███╗   ██╗    ███╗   ██╗███████╗██╗  ██╗██╗   ██╗███████╗
" ████╗  ██║██╔════╝██╔═══██╗████╗  ██║    ████╗  ██║██╔════╝╚██╗██╔╝██║   ██║██╔════╝
" ██╔██╗ ██║█████╗  ██║   ██║██╔██╗ ██║    ██╔██╗ ██║█████╗   ╚███╔╝ ██║   ██║███████╗
" ██║╚██╗██║██╔══╝  ██║   ██║██║╚██╗██║    ██║╚██╗██║██╔══╝   ██╔██╗ ██║   ██║╚════██║
" ██║ ╚████║███████╗╚██████╔╝██║ ╚████║    ██║ ╚████║███████╗██╔╝ ██╗╚██████╔╝███████║
" ╚═╝  ╚═══╝╚══════╝ ╚═════╝ ╚═╝  ╚═══╝    ╚═╝  ╚═══╝╚══════╝╚═╝  ╚═╝ ╚═════╝ ╚══════╝
"
" Neovim Colorscheme - "Neon Nexus" Cyberpunk Theme
" Matches Waybar, Mako, Wofi, Kitty, and Hyprland theming
" Author: Sarah's Cyberpunk Desktop Environment

set background=dark
hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "neon-nexus"

" Core Theme Colors (Neon Nexus Dim - matching other components)
let s:dark_base = '#1a1a1a'
let s:primary_orange = '#cc5200'        " Main accents, keywords (dimmed from #ff6600)
let s:electric_yellow = '#ccac00'       " Numbers, clock, warnings (dimmed from #ffd700)
let s:neon_green = '#00cc00'           " Strings, success states (dimmed from #00ff00)
let s:electric_pink = '#cc1174'        " Errors, constants (dimmed from #ff1493)
let s:cyber_blue = '#0099cc'           " Types, info (dimmed from #00bfff)
let s:cyan = '#00cccc'                 " Special elements (dimmed from #00ffff)
let s:music_green = '#4dcc4d'          " Comments, secondary green
let s:warning_orange = '#e66000'       " Bright orange for special cases
let s:white = '#e0e0e0'                " Primary text (dimmed white)
let s:light_gray = '#f0f0f0'           " Bright text
let s:medium_gray = '#888888'          " Medium gray
let s:dark_gray = '#404040'            " Dark gray

" Background and Foreground
hi Normal guifg=#e0e0e0 guibg=#000000
hi NonText guifg=#404040 guibg=NONE
hi EndOfBuffer guifg=#000000 guibg=NONE

" Cursor and Selection
hi Cursor guifg=#000000 guibg=#cc5200
hi CursorLine guibg=#2a2a2a
hi CursorColumn guibg=#2a2a2a
hi Visual guibg=#cc520040
hi VisualNOS guibg=#cc520040

" Line Numbers
hi LineNr guifg=#888888 guibg=NONE
hi CursorLineNr guifg=#cc5200 guibg=NONE gui=bold

" Search and Match
hi Search guifg=#000000 guibg=#ccac00
hi IncSearch guifg=#000000 guibg=#cc5200
hi MatchParen guifg=#00cccc guibg=NONE gui=bold

" Splits and Windows
hi VertSplit guifg=#cc5200 guibg=NONE
hi StatusLine guifg=#e0e0e0 guibg=#cc5200 gui=bold
hi StatusLineNC guifg=#888888 guibg=#404040
hi WinSeparator guifg=#cc5200 guibg=NONE

" Tabs
hi TabLine guifg=#888888 guibg=#2a2a2a
hi TabLineFill guifg=NONE guibg=#000000
hi TabLineSel guifg=#e0e0e0 guibg=#cc5200 gui=bold

" Popup Menu
hi Pmenu guifg=#e0e0e0 guibg=#2a2a2a
hi PmenuSel guifg=#000000 guibg=#cc5200
hi PmenuSbar guibg=#404040
hi PmenuThumb guibg=#cc5200

" Folding
hi Folded guifg=#888888 guibg=#2a2a2a
hi FoldColumn guifg=#cc5200 guibg=NONE

" Diff
hi DiffAdd guifg=#00cc00 guibg=#1a2a1a
hi DiffChange guifg=#ccac00 guibg=#2a2a1a
hi DiffDelete guifg=#cc1174 guibg=#2a1a1a
hi DiffText guifg=#e0e0e0 guibg=#cc5200

" Messages and Errors
hi ErrorMsg guifg=#cc1174 guibg=NONE gui=bold
hi WarningMsg guifg=#e66000 guibg=NONE gui=bold
hi ModeMsg guifg=#0099cc guibg=NONE gui=bold
hi MoreMsg guifg=#4dcc4d guibg=NONE gui=bold
hi Question guifg=#00cccc guibg=NONE gui=bold

" Syntax Highlighting
hi Comment guifg=#888888 gui=italic
hi Constant guifg=#cc1174 gui=bold
hi String guifg=#4dcc4d
hi Character guifg=#4dcc4d
hi Number guifg=#ccac00
hi Boolean guifg=#cc1174 gui=bold
hi Float guifg=#ccac00

hi Identifier guifg=#0099cc
hi Function guifg=#cc5200 gui=bold

hi Statement guifg=#cc5200 gui=bold
hi Conditional guifg=#cc5200 gui=bold
hi Repeat guifg=#cc5200 gui=bold
hi Label guifg=#cc5200 gui=bold
hi Operator guifg=#e0e0e0
hi Keyword guifg=#cc5200 gui=bold
hi Exception guifg=#cc1174 gui=bold

hi PreProc guifg=#00cccc gui=bold
hi Include guifg=#00cccc gui=bold
hi Define guifg=#00cccc gui=bold
hi Macro guifg=#00cccc gui=bold
hi PreCondit guifg=#00cccc gui=bold

hi Type guifg=#0099cc gui=bold
hi StorageClass guifg=#0099cc gui=bold
hi Structure guifg=#0099cc gui=bold
hi Typedef guifg=#0099cc gui=bold

hi Special guifg=#e66000
hi SpecialChar guifg=#e66000
hi Tag guifg=#e66000
hi Delimiter guifg=#e0e0e0
hi SpecialComment guifg=#e66000 gui=bold
hi Debug guifg=#cc1174

hi Underlined guifg=#00cccc gui=underline
hi Ignore guifg=#404040
hi Error guifg=#cc1174 guibg=NONE gui=bold
hi Todo guifg=#000000 guibg=#ccac00 gui=bold

" Git/VCS
hi GitGutterAdd guifg=#00cc00 guibg=NONE
hi GitGutterChange guifg=#ccac00 guibg=NONE
hi GitGutterDelete guifg=#cc1174 guibg=NONE
hi GitGutterChangeDelete guifg=#e66000 guibg=NONE

" Spell checking
hi SpellBad guifg=#cc1174 gui=undercurl guisp=#cc1174
hi SpellCap guifg=#ccac00 gui=undercurl guisp=#ccac00
hi SpellLocal guifg=#0099cc gui=undercurl guisp=#0099cc
hi SpellRare guifg=#e66000 gui=undercurl guisp=#e66000

" Directory/File tree
hi Directory guifg=#0099cc gui=bold
hi Title guifg=#cc5200 gui=bold

" Conceal
hi Conceal guifg=#888888 guibg=NONE

" LSP/Diagnostic highlighting
hi DiagnosticError guifg=#cc1174
hi DiagnosticWarn guifg=#e66000
hi DiagnosticInfo guifg=#0099cc
hi DiagnosticHint guifg=#4dcc4d
hi DiagnosticUnderlineError gui=undercurl guisp=#cc1174
hi DiagnosticUnderlineWarn gui=undercurl guisp=#e66000
hi DiagnosticUnderlineInfo gui=undercurl guisp=#0099cc
hi DiagnosticUnderlineHint gui=undercurl guisp=#4dcc4d

" Treesitter highlights (if using nvim-treesitter)
hi @comment guifg=#888888 gui=italic
hi @string guifg=#4dcc4d
hi @number guifg=#ccac00
hi @boolean guifg=#cc1174 gui=bold
hi @function guifg=#cc5200 gui=bold
hi @function.builtin guifg=#e66000 gui=bold
hi @keyword guifg=#cc5200 gui=bold
hi @operator guifg=#e0e0e0
hi @variable guifg=#e0e0e0
hi @variable.builtin guifg=#0099cc
hi @type guifg=#0099cc gui=bold
hi @constant guifg=#cc1174 gui=bold
hi @property guifg=#00cccc
hi @parameter guifg=#e0e0e0
hi @field guifg=#00cccc
hi @constructor guifg=#cc5200 gui=bold
hi @conditional guifg=#cc5200 gui=bold
hi @repeat guifg=#cc5200 gui=bold
hi @exception guifg=#cc1174 gui=bold
hi @include guifg=#00cccc gui=bold
hi @namespace guifg=#0099cc
hi @punctuation.delimiter guifg=#e0e0e0
hi @punctuation.bracket guifg=#e0e0e0
hi @tag guifg=#e66000
hi @tag.attribute guifg=#00cccc
hi @tag.delimiter guifg=#e0e0e0

" Additional enhancements for modern Neovim
hi WildMenu guifg=#000000 guibg=#cc5200
hi ColorColumn guibg=#2a2a2a
hi SignColumn guibg=NONE
hi SpecialKey guifg=#404040