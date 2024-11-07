-- Inicializa o Packer
require('packer').startup(function(use)
  -- Gerenciador de plugins
  use 'wbthomason/packer.nvim'


   use {
    'ryanoasis/vim-devicons',
    'preservim/nerdtree',
    'rcarriga/nvim-notify',
    'matze/vim-move',
    'voldikss/vim-floaterm',
    'nvim-lua/plenary.nvim',
    'nvim-lualine/lualine.nvim',
    'windwp/nvim-autopairs',
    'norcalli/nvim-colorizer.lua',
    'glepnir/dashboard-nvim',
    'mg979/vim-visual-multi',
    'MunifTanjim/nui.nvim',
    'VonHeikemen/fine-cmdline.nvim',
    'goolord/alpha-nvim',
    {'akinsho/toggleterm.nvim', tag = 'v11.*'},
    {'nvim-telescope/telescope.nvim', tag = '9.1.5'},
    'olivercederborg/poimandres.nvim',
  }



  -- Configuração do ToggleTerm
require("toggleterm").setup()

-- Configuração do Lualine
require('lualine').setup {
  options = { theme  = 'iceberg_light' }
}

-- Configuração do nvim-autopairs
require("nvim-autopairs").setup {}

-- Configuração do NERDTree (mapeamento para abrir o NERDTree)
vim.api.nvim_set_keymap('n', '<SPACE>e', ':NERDTreeToggle<CR>', { noremap = true, silent = true })

-- Mapeamentos de teclas
vim.api.nvim_set_keymap('n', '<SPACE>e', ':NERDTreeToggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<SPACE>f', ':Telescope<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<SPACE>t', ':ToggleTerm size=15 dir=~/Desktop direction=horizontal name=desktop<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<SPACE><TAB>', '::FineCmdline<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-z>', ':u<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-A>', 'ggVG<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-p>', ':tabe<CR>', { noremap = true, silent = true })

-- Movimentação personalizada
vim.api.nvim_set_keymap('n', '<C-j>', '}<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', '{', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-h>', '0k<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', '$', { noremap = true, silent = true })


local alpha = require('alpha')
local dashboard = require('alpha.themes.dashboard')

-- Header do Dashboard
dashboard.section.header.val = {
  '⠀⠀⠀⠀⠀⠀⠀⢀⣤⣶⣶⣖⣦⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀',
  '⠀⠀⠀⠀⠀⢀⣾⡟⣉⣽⣿⢿⡿⣿⣿⣆⠀⠀⠀⠀⠀⠀⠀  ',
  '⠀⠀⠀⠀⢠⣿⣿⣿⡗⠋⠙⡿⣷⢌⣿⣿⠀⠀⠀⠀⠀⠀⠀  ',
  '⣷⣄⣀⣿⣿⣿⣿⣷⣦⣤⣾⣿⣿⣿⡿⠀⠀⠀⠀⠀⠀⠀ ',
  '⠀ ⠈⠙⠛⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⡀⠀ ⠀⠀⠀⠀',
  '⠀⠀⠀⠸⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠻⠿⠿⠋⠀⠀⠀⠀',
  '⠀⠀⠀⠀⠹⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀',
  '⠀⠀⠀⠀⠀⠀⠈⢿⣿⣿⣿⣿⣿⣿⣇⠀⠀⠀⠀⠀⠀⠀⡄',
  '⠀⠀⠀⠀⠀⠀⠀⠀⠙⢿⣿⣿⣿⣿⣿⣆⠀⠀⠀⠀⢀⡾⠀',
  '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⣿⣿⣿⣿⣷⣶⣴⣾⠏⠀⠀',
  '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠛⠛⠛⠋⠁⠀⠀⠀',
}

-- Botões do Dashboard
dashboard.section.buttons.val = {
  dashboard.button("SPC e", "󰈔  Menu files", ":NERDTreeToggle<CR>"),
  dashboard.button("SPACE tab", " Search", ":FineCmdline<CR>"),
  dashboard.button("SPC f", "  Recently opened files", ":Telescope oldfiles<CR>"),
  dashboard.button("SPC f f", "  Find File", ":Telescope find_files<CR>"),
  dashboard.button("SPC f b", "  File Browser", ":Telescope file_browser<CR>"),
  dashboard.button("q", "󰿅  Exit", ":q<CR>"),
}

-- Footer do Dashboard
dashboard.section.footer.val = {'█ █ █ █ █'}

-- Inicia o Alpha
alpha.setup(dashboard.opts)


--CoreS
vim.cmd[[colorscheme poimandres]]




end)
