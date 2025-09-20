" ===============================
" Theme: Teclas (minimalista e escuro)
" ===============================

set background=dark
highlight clear
syntax reset
let g:colors_name='eva'

" -------------------------------
" Cores base
" -------------------------------
hi Normal        guibg=#130c1d       guifg=#b968fc
hi CursorLine    guibg=#1a1b26    guifg=NONE        gui=bold
hi LineNr        guibg=NONE       guifg=#b99
hi CursorLineNr  guibg=NONE       guifg=#b968fc     gui=bold
hi StatusLine    guibg=#282c34    guifg=#9448bc
hi Visual        guibg=#3e4452    guifg=NONE
hi Search        guibg=#9b5de5    guifg=#1a1b26
hi PmenuSel      guibg=#a4243b    guifg=#1a1b26     gui=bold

" -------------------------------
" Comentários e texto
" -------------------------------
hi Comment       guibg=NONE       guifg=#1b263b    gui=italic
hi Todo          guibg=NONE       guifg=#e5c07b

" -------------------------------
" Tipos e estruturas
" -------------------------------
hi Type          guibg=NONE       guifg=#9cda7c
hi Typedef       guibg=NONE       guifg=#64468c
hi Structure     guibg=NONE       guifg=#d99145
hi StorageClass  guibg=NONE       guifg=#e06c75
hi Keyword       guibg=NONE       guifg=#4a4e69      gui=bold
hi Statement     guibg=NONE       guifg=#4a4e69

" -------------------------------
" Funções e identificadores
" -------------------------------
hi Function      guibg=NONE       guifg=#9cda7c
hi Identifier    guibg=NONE       guifg=#e5c07b
hi Label         guibg=NONE       guifg=#9cda7c
hi Constant      guibg=NONE       guifg=#d19a66
hi Define        guibg=NONE       guifg=#9cda7c

" -------------------------------
" Strings, números e valores
" -------------------------------
hi String        guibg=NONE       guifg=#ab92fc
hi Character     guibg=NONE       guifg=#ab92fc
hi Number        guibg=NONE       guifg=#d19a66
hi Boolean       guibg=NONE       guifg=#d19a66
hi Float         guibg=NONE       guifg=#d19a66

" -------------------------------
" Delimitadores e operadores
" -------------------------------
hi Operator      guibg=NONE       guifg=#4a4e69
hi Delimiter     guibg=NONE       guifg=#4a4e69
hi Special       guibg=NONE       guifg=#d99145
hi SpecialChar   guibg=NONE       guifg=#e06c75
hi PreProc       guibg=NONE       guifg=#64468c
hi Include       guibg=NONE       guifg=#64468c

" -------------------------------
" Diferenças visuais
" -------------------------------
hi ColorColumn   guibg=#2c313c    guifg=NONE
hi CursorColumn  guibg=#2c313c    guifg=NONE
hi VisualNOS     guibg=NONE       guifg=#9cda7c
hi WarningMsg    guibg=NONE       guifg=#e06c75
hi ErrorMsg      guibg=NONE       guifg=#e06c75
hi SpellBad      guibg=#ff5555    guifg=#b968fc
hi SpellCap      guibg=NONE       guifg=#d19a66
hi SpellLocal    guibg=NONE       guifg=#64468u
hi SpellRare     guibg=NONE       guifg=#4a4e69

