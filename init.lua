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
    'olivercederborg/poimandres.nvim',
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
  }


vim.opt.number = true


-- Configuracoes gerais
--

-- Habilitar realce de sintaxe
vim.cmd('syntax on')

-- Habilitar suporte ao clipboard
vim.opt.clipboard:append('unnamedplus')

-- Habilitar números de linha
vim.opt.number = true

vim.opt.tabstop = 4          -- Tamanho de tabulação visual de 4 espaços
vim.opt.softtabstop = 4      -- Tamanho de tabulação em espaços ao editar
vim.opt.shiftwidth = 4       -- Tamanho de indentação ao usar '>'
vim.opt.expandtab = true     -- Converter tab em espaços
vim.opt.smarttab = true      -- Inserir tabs no início da linha de acordo com shiftwidth

-- Configurações de indentação
vim.opt.smartindent = true   -- Inserir automaticamente um nível extra de indentação em alguns casos

-- Configurações de buffer
vim.opt.hidden = true        -- Permitir ocultar o buffer atual ao abrir um novo arquivo

-- Configurações de busca
vim.opt.incsearch = true     -- Busca incremental
vim.opt.ignorecase = true    -- Ignorar maiúsculas/minúsculas na busca
vim.opt.smartcase = true     -- Considerar maiúsculas se houver uma letra maiúscula na busca

-- Configurações de rolagem e interface
vim.opt.scrolloff = 8        -- Número mínimo de linhas acima e abaixo do cursor
vim.opt.cmdheight = 2        -- Mais espaço para exibir mensagens
vim.opt.updatetime = 100     -- Tempo em milissegundos para considerar mudanças

-- Configurações de codificação e backup
vim.opt.encoding = 'utf-8'   -- Codificação em UTF-8 para suportar ícones de fonte
vim.opt.backup = false       -- Não criar arquivos de backup
vim.opt.writebackup = false  -- Não criar backup antes de salvar

-- Comportamento de divisões (splits)
vim.opt.splitright = true    -- Divisões verticais à direita
vim.opt.splitbelow = true    -- Divisões horizontais abaixo

-- Atualizar automaticamente o arquivo ao detectar mudanças externas
vim.opt.autoread = true

-- Habilitar suporte ao mouse
vim.opt.mouse = 'a'

-- Configurações de tipo de arquivo
vim.cmd('filetype on')
vim.cmd('filetype plugin on')
vim.cmd('filetype indent on')





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
