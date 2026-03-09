call plug#begin()

" Tema e Ícones
Plug 'shaunsingh/nord.nvim'
Plug 'nvim-tree/nvim-web-devicons'

" Statusline e Abas
Plug 'nvim-lualine/lualine.nvim'
Plug 'akinsho/bufferline.nvim', { 'tag': '*' }

" Explorador de arquivos
Plug 'nvim-tree/nvim-tree.lua'

" Tela inicial (Dashboard)
Plug 'goolord/alpha-nvim'

" Animação
Plug 'sphamba/smear-cursor.nvim'

call plug#end()

" Global Sets """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set termguicolors    " Habilita cores verdadeiras de 24 bits
syntax on            " Enable syntax highlight
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
set colorcolumn=100  " Draws a line at the given line to keep aware of the line size
set signcolumn=yes   " Add a column on the left. Useful for linting
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
filetype indent on   " Load the indent file for the file type, if any

" Tema
colorscheme nord

" Mapeamento de Teclas """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Abre e fecha o Nvim-Tree com Ctrl+a
nmap <C-a> :NvimTreeToggle<CR>


" Configurações em Lua """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
lua << EOF
-- 1. Nvim-Tree (Na direita)
require("nvim-tree").setup({ 
    view = { side = "right" } 
})


require("lualine").setup({ 
    options = { theme = 'nord' } 
})

-- 3. Bufferline
require("bufferline").setup({})

-- 4. Alpha (Dashboard)
require("alpha").setup(require('alpha.themes.dashboard').config)

-- 5. Animação do Cursor
require("smear_cursor").enabled = true
require("smear_cursor").setup({
    cursor_color = "#ff4000",
    particles_enabled = true,
    stiffness = 0.5,
    trailing_stiffness = 0.2,
    trailing_exponent = 5,
    damping = 0.6,
    gradient_exponent = 0,
    gamma = 1,
    never_draw_over_target = true,
    hide_target_hack = true,
    particle_spread = 1,
    particles_per_second = 500,
    particles_per_length = 50,
    particle_max_lifetime = 800,
    particle_max_initial_velocity = 20,
    particle_velocity_from_cursor = 0.5,
    particle_damping = 0.15,
    particle_gravity = -50,
    min_distance_emit_particles = 0,
})
E
