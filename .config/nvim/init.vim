call plug#begin("~/.config/nvim/plugged")
 " Better language packs
 Plug 'sheerun/vim-polyglot'
 " Relative numbers (current ln is 0)
 Plug 'ericbn/vim-relativize'
 " Nice icons in the file explorer and file type status line.
 Plug 'ryanoasis/vim-devicons'
 " airline alternative
 Plug 'nvim-lualine/lualine.nvim'
 " If you want to have icons in your statusline choose one of these
 Plug 'kyazdani42/nvim-web-devicons'
 " dependencies
 Plug 'nvim-lua/plenary.nvim'
 Plug 'nvim-lua/popup.nvim'
 " recommended - LSP config
 Plug 'neovim/nvim-lspconfig'
 " Conquer of Completion
 Plug 'neoclide/coc.nvim', {'branch': 'release'}
 " LaTeX support plugin
 Plug 'lervag/vimtex'
 " Terraform
 Plug 'hashivim/vim-terraform'
 Plug 'juliosueiras/vim-terraform-completion'
 " Rust
 Plug 'rust-lang/rust.vim'
 " Visual Git Plugin
 Plug 'tanvirtin/vgit.nvim'
 " Ansible
 Plug 'pearofducks/ansible-vim'
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

" VimTeX Settings
let g:tex_flavor='latex'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'

" ansible
let g:coc_filetype_map = {
  \ 'yaml.ansible': 'ansible',
  \ }

