local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


require("lazy").setup({

    'ryanoasis/vim-devicons',
    'preservim/nerdtree',
    'rcarriga/nvim-notify',
    'matze/vim-move',
    'voldikss/vim-floaterm',
    'nvim-lua/plenary.nvim',
    'norcalli/nvim-colorizer.lua',
    'olivercederborg/poimandres.nvim',
    'cranberry-clockworks/coal.nvim',
    'MunifTanjim/nui.nvim',


    {
        'nvim-lualine/lualine.nvim',
        config = function()
            require('lualine').setup { options = { theme = 'iceberg_light' } }
        end
    },


    { 'windwp/nvim-autopairs', config = true }, -- 'config = true' chama o setup() automaticamente
    'mg979/vim-visual-multi',
    'VonHeikemen/fine-cmdline.nvim',
    { 'akinsho/toggleterm.nvim', version = "*", config = true },
    { 'nvim-telescope/telescope.nvim', version = '0.1.8' },


    'neovim/nvim-lspconfig',
    'ervandew/supertab',
    'shougo/neocomplete.vim',
})

vim.opt.number = true
vim.opt.clipboard:append('unnamedplus')
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
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.mouse = 'a'
vim.opt.termguicolors = true
vim.opt.cursorline = true


vim.cmd('syntax on')
vim.cmd('filetype plugin indent on')
vim.cmd([[ colorscheme dev ]]) -- Certifique-se que o tema 'dev' está instalado
vim.cmd [[ let g:SuperTabDefaultCompletionType = '<C-n>' ]]

local map = vim.keymap.set


map('n', '<SPACE>e', ':NERDTreeToggle<CR>', { silent = true })
map('n', '<SPACE>f', ':Telescope<CR>', { silent = true })
map('n', '<SPACE>t', ':ToggleTerm size=15 dir=~/Desktop direction=horizontal<CR>', { silent = true })
map('n', '<SPACE><TAB>', ':FineCmdline<CR>', { silent = true })
map('n', '<C-z>', ':u<CR>')
map('n', '<C-A>', 'ggVG')
map('n', '<C-p>', ':tabe<CR>')
map('n', '<C-j>', '}')
map('n', '<C-k>', '{')
map('n', '<C-h>', '0k')
map('n', '<C-l>', '$')


local lsp_servers = {
    java = "jdtls",
    python = "pyright",
    javascript = "tsserver",
    typescript = "tsserver"
}

for lang, server in pairs(lsp_servers) do
    vim.api.nvim_create_autocmd("FileType", {
        pattern = lang,
        callback = function()
            vim.lsp.start(vim.lsp.config[server])
        end,
    })
end


require('colorizer').setup({ "*" })
