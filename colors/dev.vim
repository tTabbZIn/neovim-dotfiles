" ===============================
" Theme: Black Gruv (custom)
" ===============================

set background=dark
highlight clear
syntax reset
let g:colors_name='black_gruv'

" Base
hi Normal        guibg=#000000       guifg=#ebdbb2
hi CursorLine    guibg=#1a1a1a       guifg=NONE
hi LineNr        guibg=NONE          guifg=#665c54
hi CursorLineNr  guibg=NONE          guifg=#fabd2f     gui=bold
hi StatusLine    guibg=#3c3836       guifg=#fabd2f     gui=bold
hi Visual        guibg=#504945       guifg=NONE
hi Search        guibg=#d79921       guifg=#000000
hi PmenuSel      guibg=#fe8019       guifg=#1d2021     gui=bold

" Comentários
hi Comment       guibg=NONE          guifg=#928374     gui=italic
hi Todo          guibg=NONE          guifg=#fabd2f

" Keywords e declarações
hi Keyword       guibg=NONE          guifg=#fb4934     gui=bold
hi Statement     guibg=NONE          guifg=#fb4934
hi Type          guibg=NONE          guifg=#83a598
hi StorageClass  guibg=NONE          guifg=#fb4934
hi Structure     guibg=NONE          guifg=#fabd2f
hi Typedef       guibg=NONE          guifg=#83a598

" Funções e identificadores
hi Function      guibg=NONE          guifg=#fabd2f
hi Identifier    guibg=NONE          guifg=#d3869b
hi Constant      guibg=NONE          guifg=#d79921

" Strings, números e valores
hi String        guibg=NONE          guifg=#b8bb26
hi Character     guibg=NONE          guifg=#b8bb26
hi Number        guibg=NONE          guifg=#d3869b
hi Boolean       guibg=NONE          guifg=#d3869b
hi Float         guibg=NONE          guifg=#d3869b

" Operadores e símbolos
hi Operator      guibg=NONE          guifg=#fb4934
hi Delimiter     guibg=NONE          guifg=#ebdbb2
hi Special       guibg=NONE          guifg=#fe8019
hi PreProc       guibg=NONE          guifg=#d3869b
hi Include       guibg=NONE          guifg=#d3869b

" Warnings e erros
hi WarningMsg    guibg=NONE          guifg=#fe8019
hi ErrorMsg      guibg=NONE          guifg=#fb4934

