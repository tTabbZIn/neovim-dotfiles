require('packer').startup(function(use)
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
    'olivercederborg/poimandres.nvim',
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    'projekt0n/github-nvim-theme',

  }


vim.opt.number = true
vim.cmd('syntax on')
vim.opt.clipboard:append('unnamedplus')
vim.opt.number = true

vim.opt.tabstop = 4  
vim.opt.softtabstop = 4 
vim.opt.shiftwidth = 4  
vim.opt.expandtab = true 
vim.opt.smarttab = true  
vim.opt.smartindent = true 
vim.opt.hidden = true  
vim.opt.incsearch = true    
vim.opt.ignorecase = true    
vim.opt.smartcase = true     
vim.opt.scrolloff = 8        
vim.opt.cmdheight = 2        
vim.opt.updatetime = 100     
vim.opt.encoding = 'utf-8'  
vim.opt.backup = false      
vim.opt.writebackup = false  
vim.opt.splitright = true  
vim.opt.splitbelow = true   
vim.opt.autoread = true
vim.opt.mouse = 'a'
vim.cmd('filetype on')
vim.cmd('filetype plugin on')
vim.cmd('filetype indent on')




require("toggleterm").setup()
require('lualine').setup {
  options = { theme  = 'iceberg_light' }
}
require("nvim-autopairs").setup {}
vim.api.nvim_set_keymap('n', '<SPACE>e', ':NERDTreeToggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<SPACE>e', ':NERDTreeToggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<SPACE>f', ':Telescope<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<SPACE>t', ':ToggleTerm size=15 dir=~/Desktop direction=horizontal name=desktop<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<SPACE><TAB>', '::FineCmdline<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-z>', ':u<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-A>', 'ggVG<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-p>', ':tabe<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', '}<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', '{', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-h>', '0k<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', '$', { noremap = true, silent = true })


local alpha = require('alpha')
local dashboard = require('alpha.themes.dashboard')
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





---TEmaa
vim.cmd('colorscheme github_dark_high_contrast')


require('colorizer').setup({
  "*";
})



end)
