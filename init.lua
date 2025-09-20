require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'


   use {
    'ryanoasis/vim-devicons',
    'preservim/nerdtree',
    'rcarriga/nvim-notify',
    'matze/vim-move',
    'voldikss/vim-floaterm',
    'nvim-lua/plenary.nvim',
    'nvim-lualine/lualine.nvim',require('packer').startup(function(use)
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
    'mg979/vim-visual-multi',
    'MunifTanjim/nui.nvim',
    'VonHeikemen/fine-cmdline.nvim',
    {'akinsho/toggleterm.nvim', tag = 'v11.*'},
    'olivercederborg/poimandres.nvim',
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    'cranberry-clockworks/coal.nvim',
    'ervandew/supertab',
    'shougo/neocomplete.vim',
    'neovim/nvim-lspconfig'
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
vim.cmd [[ let g:SuperTabDefaultCompletionType = '<C-n>' ]]



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






vim.api.nvim_create_autocmd("FileType", {
  pattern = "java",
  callback = function()
    vim.lsp.start(vim.lsp.config.jdtls)
  end,
})

-- Autocomando para Python (pyright)
vim.api.nvim_create_autocmd("FileType", {
  pattern = "python",
  callback = function()
    vim.lsp.start(vim.lsp.config.pyright)
  end,
})

-- Autocomando para JS/TS (tsserver)
vim.api.nvim_create_autocmd("FileType", {
  pattern = {"javascript","typescript"},
  callback = function()
    vim.lsp.start(vim.lsp.config.tsserver)
  end,
})


--===============================
--Colorscheme
--===============================

vim.cmd([[
    colorscheme dev
    set termguicolors
    set cursorline

]])




require('colorizer').setup({
  "*";
})



end)
    'windwp/nvim-autopairs',
    'norcalli/nvim-colorizer.lua',
    'mg979/vim-visual-multi',
    'MunifTanjim/nui.nvim',
    'VonHeikemen/fine-cmdline.nvim',
    {'akinsho/toggleterm.nvim', tag = 'v11.*'},
    'olivercederborg/poimandres.nvim',
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    'cranberry-clockworks/coal.nvim',
    'ervandew/supertab',
    'shougo/neocomplete.vim',
    'neovim/nvim-lspconfig'
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
vim.cmd [[ let g:SuperTabDefaultCompletionType = '<C-n>' ]]



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






vim.api.nvim_create_autocmd("FileType", {
  pattern = "java",
  callback = function()
    vim.lsp.start(vim.lsp.config.jdtls)
  end,
})

-- Autocomando para Python (pyright)
vim.api.nvim_create_autocmd("FileType", {
  pattern = "python",
  callback = function()
    vim.lsp.start(vim.lsp.config.pyright)
  end,
})

-- Autocomando para JS/TS (tsserver)
vim.api.nvim_create_autocmd("FileType", {
  pattern = {"javascript","typescript"},
  callback = function()
    vim.lsp.start(vim.lsp.config.tsserver)
  end,
})


--===============================
--Colorscheme
--===============================

vim.cmd([[
    colorscheme dev
    set termguicolors
    set cursorline

]])


require('colorizer').setup({
  "*";
})



end)
