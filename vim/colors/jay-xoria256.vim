" Vim color file
" Name:		xoria256.vim
" Version:	0.1
" License:	Public Domain
" Maintainer:	Jay Taylor <outtatime@gmail.com>
"
" Heavily based on 'xoria256' color scheme.
"
" Sould work in a 256 color terminal (like latest versions of xterm, konsole,
" etc).  Will not, however, work in 88 color terminals like urxvt.
"
" Color numbers (0-255) see:
" http://www.calmar.ws/vim/256-xterm-24bit-rgb-color-chart.html
" TODO:
" 	- Diff
" 	- Html



if &t_Co != 256 && ! has("gui_running")
  echomsg ""
  echomsg "err: please use GUI or a 256-color terminal (so that t_Co=256 could be set)"
  echomsg ""
  finish
endif


if has("gui_running")
  set background=dark
else
  set background=light
endif

hi clear
if exists("syntax_on")
  syntax reset
endif

" Which one is right?
"let colors_name = "jay-xoria256"
let g:colors_name = "jay-xoria256"



"hi Normal	cterm=none	ctermfg=252	ctermbg=232	gui=none	guifg=#d0d0d0	guibg=#080808 "#202020	
if has("gui_running")
  hi Normal	cterm=none	ctermfg=252	ctermbg=232	gui=none	guifg=#d0d0d0 guibg=#000000
else
  hi Normal	cterm=none	ctermfg=252	ctermbg=232	gui=none
  "guifg=#d0d0d0 guibg=#000000
endif

hi Cursor	cterm=none	ctermfg=bg	ctermbg=214	gui=none	guifg=bg	guibg=#ffaf00	
hi CursorColumn	cterm=none			ctermbg=238	gui=none			guibg=#444444	
hi CursorLine	cterm=none			ctermbg=238	gui=none			guibg=#444444	
hi lCursor	cterm=none	ctermfg=0	ctermbg=40	gui=none	guifg=#000000	guibg=#00df00	
"hi CursorIM	cterm=		ctermfg=	ctermbg=	gui=		guifg=		guibg=
hi IncSearch	cterm=none	ctermfg=0	ctermbg=223	gui=none	guifg=#000000	guibg=#ffdfaf	
hi Search	cterm=none	ctermfg=0	ctermbg=149	gui=none	guifg=#000000	guibg=#afdf5f	
hi ErrorMsg	cterm=none	ctermfg=15	ctermbg=160	gui=bold	guifg=#ffffff	guibg=#df0000	
hi WarningMsg	cterm=bold	ctermfg=196	ctermbg=bg	gui=bold	guifg=#ff0000	guibg=bg	
hi ModeMsg	cterm=bold	ctermfg=fg	ctermbg=bg	gui=bold	guifg=fg	guibg=bg
hi MoreMsg	cterm=bold	ctermfg=250	ctermbg=bg	gui=bold	guifg=#bcbcbc	guibg=bg
hi Question	cterm=bold	ctermfg=113	ctermbg=bg	gui=bold	guifg=#87df7f	guibg=bg	

"hi StatusLine	cterm=bold	ctermfg=fg	ctermbg=239	gui=bold	guifg=fg	guibg=#4e4e4e	
hi StatusLine	cterm=none ctermfg=0	ctermbg=252	gui=none	guifg=#000000	guibg=#d0d0d0
hi StatusLineNC	cterm=none	ctermfg=fg	ctermbg=237	gui=none	guifg=fg	guibg=#3a3a3a	
hi User1	cterm=none	ctermfg=15	ctermbg=20	gui=none	guifg=#ffffff	guibg=#0000df	
hi User2	cterm=none	ctermfg=46	ctermbg=20	gui=none	guifg=#00ff00	guibg=#0000df	
hi User3	cterm=none	ctermfg=46	ctermbg=20	gui=none	guifg=#00ff00	guibg=#0000df	
hi User4	cterm=none	ctermfg=50	ctermbg=20	gui=none	guifg=#00ffdf	guibg=#0000df	
hi User5	cterm=none	ctermfg=46	ctermbg=20	gui=none	guifg=#00ff00	guibg=#0000df	
hi VertSplit	cterm=reverse	ctermfg=fg	ctermbg=237	gui=reverse	guifg=fg	guibg=#3a3a3a	

"hi WildMenu	cterm=bold	ctermfg=0	ctermbg=184	gui=bold	guifg=#000000	guibg=#dfdf00	
hi WildMenu	cterm=none	ctermfg=0	ctermbg=184	gui=none	guifg=#000000	guibg=#dfdf00	
"hi Menu	cterm=		ctermfg=	ctermbg=	gui=		guifg=		guibg=
"hi Scrollbar	cterm=		ctermfg=	ctermbg=	gui=		guifg=		guibg=
"hi Tooltip	cterm=		ctermfg=	ctermbg=	gui=		guifg=		guibg=

"hi MBENormal	cterm=		ctermfg=	ctermbg=	gui=		guifg=		guibg=
"hi MBEChanged	cterm=		ctermfg=	ctermbg=	gui=		guifg=		guibg=
"hi MBEVisibleNormal cterm=	ctermfg=	ctermbg=	gui=		guifg=		guibg=
"hi MBEVisibleChanged cterm=	ctermfg=	ctermbg=	gui=		guifg=		guibg=

"hi DiffText	cterm=bold	ctermfg=fg	ctermbg=20	gui=bold	guifg=fg	guibg=#0000df	
hi DiffText	cterm=none	ctermfg=fg	ctermbg=20	gui=none	guifg=fg	guibg=#0000df	
hi DiffDelete	cterm=none	ctermfg=fg	ctermbg=88	gui=none	guifg=fg	guibg=#870000	
hi DiffChange	cterm=none	ctermfg=fg	ctermbg=18	gui=none	guifg=fg	guibg=#000087	
hi DiffAdd	cterm=none	ctermfg=fg	ctermbg=28	gui=none	guifg=fg	guibg=#008700	

hi Folded	cterm=none	ctermfg=247	ctermbg=251	gui=bold	guifg=#c6c6c6	guibg=#585858	
hi FoldColumn	cterm=none	ctermfg=248	ctermbg=58	gui=none	guifg=#a8a8a8	guibg=bg	
hi SignColumn	cterm=none	ctermfg=248	ctermbg=bg	gui=none	guifg=#a8a8a8	guibg=bg	

hi Directory	cterm=none	ctermfg=39	ctermbg=bg	gui=none	guifg=#00afff	guibg=bg	
hi LineNr	cterm=none	ctermfg=248			gui=none	guifg=#a8a8a8	
"hi NonText	cterm=bold	ctermfg=248	ctermbg=bg	gui=bold	guifg=#a8a8a8	guibg=bg
hi NonText	cterm=none	ctermfg=248	ctermbg=bg	gui=bold	guifg=#a8a8a8	guibg=bg
hi SpecialKey	cterm=none	ctermfg=77	ctermbg=bg	gui=none	guifg=#5fdf5f	guibg=bg	
hi Title	cterm=none	ctermfg=0	ctermbg=184	gui=none	guifg=#000000	guibg=#dfdf00	
hi Visual	cterm=none	ctermfg=24	ctermbg=153	gui=none	guifg=#005f87	guibg=#afdfff
"hi Visual	cterm=none	ctermfg=18	ctermbg=153	gui=none	guifg=#005f87	guibg=#afdfff
"hi VisualNOS	cterm=bold,underline ctermfg=247 ctermbg=bg	gui=bold,underline guifg=#9e9e9e guibg=bg	
hi VisualNOS	cterm=none,underline ctermfg=247 ctermbg=bg	gui=bold,underline guifg=#9e9e9e guibg=bg	

hi Comment	cterm=none	ctermfg=244	ctermbg=bg	gui=none	guifg=#808080	guibg=bg	
"hi Constant	cterm=none	ctermfg=222	ctermbg=bg	gui=none	guifg=#ffdf87	guibg=bg	
"hi Constant	cterm=none	ctermfg=221	ctermbg=bg	gui=none	guifg=#ffdf57	guibg=bg	
hi Constant	cterm=none	ctermfg=180	ctermbg=bg	gui=none	guifg=#dfaf87	guibg=bg	
"hi String	cterm=		ctermfg=	ctermbg=	gui=		guifg=		guibg=
hi Error	cterm=none	ctermfg=196	ctermbg=bg	gui=none	guifg=#df5faf	guibg=bg	
"hi Identifier	cterm=none	ctermfg=229	ctermbg=bg	gui=none	guifg=#ffffaf	guibg=bg	
"hi Identifier	cterm=none	ctermfg=255	ctermbg=26	gui=none	guifg=#00afff	guibg=#1c1c1c
hi Identifier	cterm=none	ctermfg=51 ctermbg=234 gui=none guifg=#00ffff guibg=#1c1c1c
hi Ignore	cterm=none	ctermfg=bg	ctermbg=bg	gui=none	guifg=bg	guibg=bg	
"hi Number	cterm=none	ctermfg=209	ctermbg=0	gui=none	guifg=#ff875f	guibg=#000000
"hi Number	cterm=none	ctermfg=210	ctermbg=0	gui=none	guifg=#ff8787	guibg=#000000
hi Number	cterm=none	ctermfg=174	ctermbg=0	gui=none	guifg=#df8787	guibg=#000000
hi PreProc	cterm=none	ctermfg=182	ctermbg=bg	gui=none	guifg=#dfafdf	guibg=bg	
"hi PreProc	cterm=none	ctermfg=218	ctermbg=bg	gui=none	guifg=#ffafdf	guibg=bg	
"hi Special	cterm=none	ctermfg=77	ctermbg=bg	gui=none	guifg=#5fdf5f	guibg=bg	
hi Special	cterm=none	ctermfg=114	ctermbg=bg	gui=none	guifg=#5fdf5f	guibg=bg	
"hi SpecialChar	cterm=		ctermfg=	ctermbg=	gui=		guifg=		guibg=
hi Statement	cterm=none	ctermfg=74	ctermbg=234	gui=none	guifg=#5fafdf	guibg=#1c1c1c	
"hi Statement	cterm=none	ctermfg=75	ctermbg=bg	gui=none	guifg=#5fafff	guibg=bg	
"hi Todo		cterm=none	ctermfg=0	ctermbg=184	gui=none	guifg=#000000	guibg=#dfdf00	
hi Todo		cterm=bold	ctermfg=77	ctermbg=bg	gui=bold,italic	guifg=#5fdf5f guibg=bg
"hi Type		cterm=none	ctermfg=153	ctermbg=bg	gui=none	guifg=#afdfff	guibg=bg	
hi Type		cterm=none	ctermfg=146	ctermbg=bg	gui=none	guifg=#afafdf	guibg=bg	
hi Underlined	cterm=underline	ctermfg=39	ctermbg=bg	gui=underline	guifg=#00afff	guibg=bg	

"hi htmlBold	cterm=		ctermbg=0	ctermfg=15	guibg=bg	guifg=fg	gui=bold
"hi htmlBoldItalic cterm=	ctermbg=0	ctermfg=15	guibg=bg	guifg=fg	gui=bold,italic
"hi htmlBoldUnderline cterm=	ctermbg=0	ctermfg=15	guibg=bg	guifg=fg	gui=bold,underline
"hi htmlBoldUnderlineItalic cterm= ctermbg=0	ctermfg=15	guibg=bg	guifg=fg	gui=bold,underline,italic
"hi htmlItalic	cterm=		ctermbg=0	ctermfg=15	guibg=bg	guifg=fg	gui=italic
"hi htmlUnderline cterm=	ctermbg=0	ctermfg=15	guibg=bg	guifg=fg	gui=underline
"hi htmlUnderlineItalici cterm=	ctermbg=0	ctermfg=15	guibg=bg	guifg=fg	gui=underline,italic


" For taglist plugin
" **note** I commented if statement out because I usally load taglist plugin by
"          pressing F4, and I want this colorscheme active by default.
"          -Jay
" if exists('loaded_taglist')
  hi TagListFileName cterm=none	ctermfg=0	ctermbg=252	gui=none	guifg=#000000	guibg=#d0d0d0
  hi TagListTitle    cterm=underline	ctermfg=199	ctermbg=232	gui=bold	guifg=#ff00af	guibg=#000000
  "hi TagListTagName  cterm=none	ctermfg=0	ctermbg=28	gui=none	guifg=#000000	guibg=#008700
  hi TagListTagName  cterm=none	ctermfg=39	ctermbg=234	gui=italic	guifg=#00afff	guibg=#1c1c1c
  "hi TagListTagScope cterm=none	ctermfg=16	ctermbg=28	gui=none	guifg=#000000	guibg=#008700
  hi TagListTagScope cterm=none	ctermfg=244	gui=none	guifg=#808080
  "	guibg=#000000
  hi TagListComment  cterm=none	ctermfg=39	ctermbg=234	gui=none	guifg=#00afff	guibg=#1c1c1c
" endif


" For features in vim v.7.0 and higher
if v:version >= 700
  hi Pmenu      cterm=none	ctermfg=0	ctermbg=246	gui=none	guifg=#000000	guibg=#949494
  hi PmenuSel   cterm=none	ctermfg=0	ctermbg=243	gui=none	guifg=#000000	guibg=#767676
  hi PmenuSbar  cterm=none	ctermfg=fg	ctermbg=243	gui=none	guifg=fg	guibg=#767676	
  hi PmenuThumb cterm=none	ctermfg=bg	ctermbg=252	gui=none	guifg=bg	guibg=#d0d0d0	
  
  "  if has("spell")
  "  	hi SpellBad	guisp=#ee2c2c	gui=undercurl
  "  	hi SpellCap	guisp=#2c2cee	gui=undercurl
  "  	hi SpellLocal	guisp=#2ceeee	gui=undercurl
  "  	hi SpellRare	guisp=#ee2cee	gui=undercurl
  "  endif
  
  hi MatchParen	cterm=none	ctermfg=24	ctermbg=153	gui=none	guifg=#005f87	guibg=#afdfff

  "hi TabLineSel	cterm=bold	ctermfg=fg	ctermbg=bg	gui=bold	guifg=fg	guibg=bg	
  hi TabLineSel	cterm=none	ctermfg=fg	ctermbg=bg	gui=bold	guifg=fg	guibg=bg	
  hi TabLine	cterm=underline	ctermfg=fg	ctermbg=242	gui=underline	guifg=fg	guibg=#666666	
  hi TabLineFill cterm=underline ctermfg=fg	ctermbg=242	gui=underline	guifg=fg	guibg=#666666	
endif
