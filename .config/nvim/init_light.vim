call plug#begin("~/.config/nvim/plugged")

" Indentation based movements
Plug 'jeetsukumaran/vim-indentwise'
" Relative numbers (current ln is 0)
Plug 'ericbn/vim-relativize'
" airline alternative
Plug 'nvim-lualine/lualine.nvim'
" If you want to have icons in your statusline choose one of these
Plug 'kyazdani42/nvim-web-devicons'
" dependencies
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/popup.nvim'
" Visual Git Plugin
Plug 'tanvirtin/vgit.nvim'
call plug#end()


" tabs and spaces handling
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" show line numbers
set relativenumber
set number

" remove ugly vertical lines on window division
set fillchars+=vert:\ 

" utf-8 everywhere
set encoding=utf-8
"
" when scrolling, keep cursor 3 lines away from screen border
set scrolloff=3

" keep BASH as our shell for compatibility
set shell=/bin/bash



" start lualine
lua << END
require('lualine').setup {
    options = {
        theme = 'ayu_light'
        }
}
-- setup vgit
require('vgit').setup({})
END
