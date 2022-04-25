call plug#begin("~/.config/nvim/plugged")

" Indentation based movements
Plug 'jeetsukumaran/vim-indentwise'
" Better language packs
Plug 'sheerun/vim-polyglot'
" Icons :)
Plug 'mhinz/vim-signify'
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
" nvim-go
Plug 'crispgm/nvim-go'
" recommended - LSP config
Plug 'neovim/nvim-lspconfig'
" Conquer of Completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" LaTeX support plugin
Plug 'lervag/vimtex'
" coc-ansible
Plug 'yaegassy/coc-ansible', {'do': 'yarn install --frozen-lockfile'}
" Helps you win at grep
Plug 'mhinz/vim-grepper'
" Terraform
Plug 'hashivim/vim-terraform'
Plug 'vim-syntastic/syntastic'
Plug 'juliosueiras/vim-terraform-completion'
" Rust
Plug 'rust-lang/rust.vim'
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
-- setup nvim-go
require('go').setup({})
require('go').config.update_tool('quicktype', function(tool)
    tool.pkg_mgr = 'npm'
end)
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

" Syntastic Config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" (Optional)Remove Info(Preview) window
set completeopt-=preview

" (Optional)Hide Info(Preview) window after completions
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" (Optional) Enable terraform plan to be include in filter
let g:syntastic_terraform_tffilter_plan = 1

" (Optional) Default: 0, enable(1)/disable(0) plugin's keymapping
let g:terraform_completion_keys = 1

" (Optional) Default: 1, enable(1)/disable(0) terraform module registry completion
let g:terraform_registry_module_completion = 0
