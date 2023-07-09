call plug#begin(stdpath('data').'/plugged')

    " NERDTree
    Plug 'preservim/nerdtree'

    " VIM-DEVICONS icons for NERDTree
    Plug 'ryanoasis/vim-devicons'

    " Surround.vim
    Plug 'tpope/vim-surround'

    " Airline status bar
    Plug 'vim-airline/vim-airline'
    " Plug 'vim-airline/vim-airline-themes'

    " NERDCommenter
    Plug 'preservim/nerdcommenter'

    " Coc
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    " Other themes
    Plug 'morhetz/gruvbox'

    " Theme Catppuccin
    Plug 'catppuccin/nvim', { 'as': 'catppuccin' }

    " Autocomplete C#
    Plug 'OmniSharp/omnisharp-vim'

    " Autocomplete Java
    " Plug 'artur-shaik/vim-javacomplete2'

    " Emojins
    Plug 'ryanoasis/vim-devicons'

    " Find files
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.2' }

    " Find projects
    Plug 'ahmedkhalf/project.nvim'

    " Fmt
    Plug 'sbdchd/neoformat'

call plug#end()

