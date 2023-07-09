let g:nvim_data_root = stdpath('data')
let g:nvim_config_root = stdpath('config')
let g:config_file_list = ['/nvim-plugins/plugins.vim',
    \ '/general/settings.vim',
    \ '/keymapping/keys.vim',
    \ '/plug-config/airline.vim',
    "\ '/plug-config/coc.vim',
    \ '/plug-config/nerdcommenter.vim',
    \ ]

for f in g:config_file_list
    execute 'source ' . g:nvim_config_root . f
endfor

lua << EOF
require("catppuccin").setup {
    color_overrides = {
        all = {
            text = "#ffffff",
        },
        latte = {
            base = "#ff0000",
            mantle = "#242424",
            crust = "#474747",
        },
        frappe = {},
        macchiato = {},
        mocha = {},
    }
}
EOF

let g:rustfmt_autosave = 1
let g:rustfmt_command = "rustup +nightly run rustfmt --edition=2018"
let g:rustfmt_on_save = 1
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_delay = 1000
let g:ale_linters = {
\   'rust': ['rust-analyzer'],
\}


hi NERDTreeFlags gui=bold guifg=white
hi NERDTreeDir gui=bold

let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeDirArrowExpandable = '📁'
let g:NERDTreeDirArrowCollapsible = '📂'

let g:WebDevIconsUnicodeDecorateFolderNodes = 0

let g:NERDTreeIndicatorMapCustom = {
  \ "Modified"  : "✹",
  \ "Staged"    : "✚",
  \ "Untracked" : "✭",
  \ "Renamed"   : "➜",
  \ "Unmerged"  : "═",
  \ "Deleted"   : "✖",
  \ "Dirty"     : "✗",
  \ "Clean"     : "✔︎",
  \ "Unknown"   : "?"
  \ }

nnoremap <C-l> :Telescope find_files<CR>

let g:airline_theme='catppuccin'

" Fmt

autocmd BufWritePre * Neoformat
