call plug#begin()
Plug 'ryanoasis/vim-devicons'
Plug 'preservim/nerdtree'
Plug 'rcarriga/nvim-notify'
Plug 'matze/vim-move'
Plug 'voldikss/vim-floaterm'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '9.1.5' }
Plug 'akinsho/toggleterm.nvim', {'tag' : 'v11.*'}
Plug 'nvim-lualine/lualine.nvim'
Plug 'windwp/nvim-autopairs'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'glepnir/dashboard-nvim'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'MunifTanjim/nui.nvim'
Plug 'VonHeikemen/fine-cmdline.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'alanfortlink/blackjack.nvim'
Plug 'bluz71/vim-moonfly-colors', { 'as': 'moonfly' }
Plug 'RRethy/vim-hexokinase', { 'do': 'make hexokinase' }
Plug 'goolord/alpha-nvim'

Plug 'cocopon/iceberg.vim'
call plug#end()
lua require("toggleterm").setup()

colorscheme iceberg





" Global Sets """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on            " Enable syntax highlight
set clipboard+=unnamedplus "Ctrl c 'e o msm do pc"
set nu               " Enable line numbers
set tabstop=4        " Show existing tab with 4 spaces width
set softtabstop=4    " Show existing tab with 4 spaces width
set shiftwidth=4     " When indenting with '>', use 4 spaces width
set expandtab        " On pressing tab, insert 4 spaces
set smarttab         " insert tabs on the start of a line according to shiftwidth
set smartindent      " Automatically inserts one extra level of indentation in some cases
set hidden           " Hides the current buffer when a new file is openned
set incsearch        " Incremental search
set ignorecase       " Ingore case in search
set smartcase        " Consider case if there is a upper case character
set scrolloff=8      " Minimum number of lines to keep above and below the cursor
set cmdheight=2      " Give more space for displaying messages
set updatetime=100   " Time in miliseconds to consider the changes
set encoding=utf-8   " The encoding should be utf-8 to activate the font icons
set nobackup         " No backup files
set nowritebackup    " No backup files
set splitright       " Create the vertical splits to the right
set splitbelow       " Create the horizontal splits below
set autoread         " Update vim after file update from outside
set mouse=a          " Enable mouse support
filetype on          " Detect and set the filetype option and trigger the FileType Event
filetype plugin on   " Load the plugin file for the file type, if any
filetype indent on   " Load the indent file for the file type, if any:wq

"Remaps"""""""""""""""""""""""""""
nmap <SPACE>e :NERDTreeToggle<CR>
nmap <SPACE>f :Telescope<CR>
nmap <SPACE>t :ToggleTerm size=15 dir=~/Desktop direction=horizontal name=desktop<CR>
nmap <SPACE><TAB> ::FineCmdline<CR>
nmap <C-z> :u<CR>
nmap <C-A> ggVG<CR>
nmap <C-p> :tabe<CR>
 

"""""MOVIMENTACAO"
nmap <C-j> }<CR>
nnoremap <C-k> {

nmap <C-h> 0k<CR>

nnoremap <C-l> $






lua << EOF
-- Configuração do lualine
require('lualine').setup {
  options = { theme  = 'iceberg_light' }
}

-- Configuração do nvim-autopairs
require("nvim-autopairs").setup {}





EOF

lua << EOF
  local alpha = require('alpha')
  local dashboard = require('alpha.themes.dashboard')

  dashboard.section.header.val = {'','','','',
    '  ⠀⠀⠀⠀⠀⠀⢀⣤⣶⣶⣖⣦⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀',
    '  ⠀⠀⠀⠀⢀⣾⡟⣉⣽⣿⢿⡿⣿⣿⣆⠀⠀⠀⠀⠀⠀⠀  ',
    '  ⠀⠀⠀⢠⣿⣿⣿⡗⠋⠙⡿⣷⢌⣿⣿⠀⠀⠀⠀⠀⠀⠀  ',
    ' ⣷⣄⣀⣿⣿⣿⣿⣷⣦⣤⣾⣿⣿⣿⡿⠀⠀⠀⠀⠀⠀⠀ ',
    '⠀ ⠈⠙⠛⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⡀⠀ ⠀⠀⠀⠀',
    ' ⠀⠀⠀⠸⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠻⠿⠿⠋⠀⠀⠀⠀',
    ' ⠀⠀⠀⠀⠹⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀',
    ' ⠀⠀⠀⠀⠀⠈⢿⣿⣿⣿⣿⣿⣿⣇⠀⠀⠀⠀⠀⠀⠀⡄',
    ' ⠀⠀⠀⠀⠀⠀⠀⠙⢿⣿⣿⣿⣿⣿⣆⠀⠀⠀⠀⢀⡾⠀',
    ' ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⣿⣿⣿⣿⣷⣶⣴⣾⠏⠀⠀',
    ' ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠛⠛⠛⠋⠁⠀⠀⠀',


  }

  dashboard.section.buttons.val = {
    dashboard.button("SPC e", "󰈔  Menu files", ":NERDTreeToggle<CR>"),
    dashboard.button("SPACE tab", " Search", ":FineCmdline<CR>"),
    dashboard.button("SPC f", "  Recently opened files", ":Telescope oldfiles<CR>"),
    dashboard.button("SPC f f", "  Find File", ":Telescope find_files<CR>"),
    dashboard.button("SPC f b", "  File Browser", ":Telescope file_browser<CR>"),
    dashboard.button("q", "󰿅  Exit", ":q<CR>"),
  }

  dashboard.section.footer.val = {'█ █ █ █ █'}

  alpha.setup(dashboard.opts)
EOF
