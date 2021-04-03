call plug#begin(stdpath('data') . '/plugged')

Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
" Plug 'hrsh7th/vim-vsnip'
" Plug 'hrsh7th/vim-vsnip-integ'
" Plug 'honza/vim-snippets'
Plug 'glepnir/lspsaga.nvim', { 'branch': 'main' }
Plug 'onsails/lspkind-nvim'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'liuchengxu/vim-which-key'

" Plug 'anott03/nvim-lspinstall'
Plug 'kabouzeid/nvim-lspinstall', { 'branch': 'main' } " maybe only use lspupdate ?
Plug 'alexaandru/nvim-lspupdate', { 'branch': 'main' }
" Plug 'mattn/vim-lsp-settings'
" Plug 'mfussenegger/nvim-dap'

" Plug 'jesseduffield/lazydocker'

" Extentions to built-in LSP, for example, providing type inlay hints
Plug 'nvim-lua/lsp_extensions.nvim'
Plug 'nvim-lua/lsp-status.nvim'
" Plug 'ryanoasis/vim-devicons'
" Plug 'romgrk/barbar.nvim'  " REEEEEALLY NICE TABS!!!

Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }  " We recommend updating the parsers on update
" Plug 'nvim-treesitter/nvim-treesitter-refactor'
" Plug 'nvim-treesitter/playground'
" Plug 'p00f/nvim-ts-rainbow'
Plug 'sheerun/vim-polyglot'
Plug 'windwp/nvim-autopairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'christianchiarulli/nvcode-color-schemes.vim'
Plug 'psliwka/vim-smoothie'
Plug 'ChristianChiarulli/dashboard-nvim'

Plug 'cespare/vim-toml'
Plug 'stephpy/vim-yaml'
Plug 'gennaro-tedesco/nvim-jqx'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
" Plug 'rust-lang/rust.vim'
Plug 'rhysd/vim-clang-format'
Plug 'cdelledonne/vim-cmake'
Plug 'turbio/bracey.vim', { 'do': 'npm install --prefix server' }
Plug 'junegunn/goyo.vim'
Plug 'tpope/vim-sleuth'
Plug 'gennaro-tedesco/nvim-peekup'
" Plug 'p00f/nvim-ts-rainbow'

Plug 'metakirby5/codi.vim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'tami5/sql.nvim'
Plug 'nvim-telescope/telescope-media-files.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'nvim-telescope/telescope-frecency.nvim'
Plug 'BurntSushi/ripgrep'
" Plug 'sharkdp/fd'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'brooth/far.vim'
Plug 'unblevable/quick-scope'
" Plug 'kevinhwang91/nvim-bqf'  " Better quickfix windows
" Plug 'airblade/vim-rooter'

Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'terrortylor/nvim-comment', { 'branch': 'main' }
Plug 'andymass/vim-matchup'
Plug 'junegunn/gv.vim'
Plug 'rhysd/git-messenger.vim'
" Plug 'lewis6991/gitsigns.nvim'

call plug#end()

syntax enable
filetype plugin indent on
colorscheme snazzy

set completeopt=menuone,noinsert,noselect
set hidden
set nowrap
set whichwrap+=<,>,[,],h,l
set iskeyword+=-
set inccommand=split

" Avoid showing extra messages when using completion
set shortmess+=c

set tabstop=2
set shiftwidth=2
set smarttab
set expandtab
set smartindent
set autoindent
set showtabline=2

" set cindent shiftwidth=2
" set cindent autoindent
" set cindent smartindent

highlight Pmenu guibg=black gui=bold

" set guioptions-=T " Remove toolbar"
set backspace=2 " Backspace over newlines
set nofoldenable
set noshowmode
set cursorline
set ruler
set cmdheight=2
set t_Co="256"
set conceallevel=0
set signcolumn=yes
let g:nvcode_termcolors=256
if (has("termguicolors"))
  set termguicolors
  hi LineNr ctermbg=NONE guibg=NONE
endif
" set ttyfast
" https://github.com/vim/vim/issues/1735#issuecomment-383353563
set lazyredraw
set regexpengine=1
set ignorecase smartcase
set synmaxcol=500
set laststatus=2
set relativenumber
set number " Also show current absolute line
set diffopt+=iwhite " No whitespace in vimdiff
" Make diffing better: https://vimways.org/2018/the-power-of-diff/
set diffopt+=algorithm:patience
set diffopt+=indent-heuristic
set colorcolumn=100 " and give me a colored column
set showcmd " Show (partial) command in status line.
set mouse=a " Enable mouse usage (all modes) in terminals
set clipboard+=unnamedplus
set incsearch

" Turn on backup option
set backup
" Where to store backups
set backupdir=~/.local/share/nvim/backup
" Make backup before overwriting the current buffer
set writebackup
" Overwrite the original backup file
set backupcopy=yes
" Meaningful backup name, ex: filename@2015-04-05.14:59
au BufWritePre * let &bex = '@' . strftime("%F.%H:%M")

" No arrow keys --- force yourself to use the home row
nnoremap <up> <nop>
nnoremap <down> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Left and right can switch buffers
nnoremap <left> :bp<CR>
nnoremap <right> :bn<CR>

" Move by line
nnoremap j gj
nnoremap k gk

" luafile ~/.config/nvim/luals.lua
luafile ~/.config/nvim/keymappings.lua
luafile ~/.config/nvim/nvim_tree.lua
luafile ~/.config/nvim/dash.lua
source ~/.config/nvim/which_key.vim

lua <<EOF
-- nvim_lsp object
local nvim_lsp = require'lspconfig'

-- Setup lsp-status
local lsp_status = require'lsp-status'
lsp_status.register_progress()

-- Enable nvim-autopairs
require'nvim-autopairs'.setup()

-- Setup lspsaga
require'lspsaga'.init_lsp_saga()

-- symbols for autocomplete
require'lspkind'.init({
    with_text = false,
    symbol_map = {
      Text = '  ',
      Method = '  ',
      Function = '  ',
      Constructor = '  ',
      Variable = '[]',
      Class = '  ',
      Interface = ' 蘒',
      Module = '  ',
      Property = '  ',
      Unit = ' 塞 ',
      Value = '  ',
      Enum = ' 練',
      Keyword = '  ',
      Snippet = '  ',
      Color = '',
      File = '',
      Folder = ' ﱮ ',
      EnumMember = '  ',
      Constant = '  ',
      Struct = '  '
    },
})

-- Setup nvim_treesitter
require'nvim-treesitter.configs'.setup {
  ensure_installed = "all", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  highlight = {
      enable = true              -- false will disable the whole extension
  },
--  rainbow = { enable = true },
  autotag = { enable = true }
}

-- Enable rust_analyzer
local on_attach = function(client)
  lsp_status.on_attach(client)
end

-- nvim_lsp.rust_analyzer.setup({
--   on_attach = on_attach,
--   settings = {
--     ['rust-analyzer'] = {
--       checkOnSave = {
--         extraArgs = {
--           "--target-dir", "/tmp/rust-analyzer-check"
--         }
--       }
--     }
--   },
--   capabilities = lsp_status.capabilities
-- })

-- Setup ClangD
-- nvim_lsp.clangd.setup{
--   handlers = lsp_status.extensions.clangd.setup(),
--   init_options = {
--     clangdFileStatus = true
--   },
--   on_attach = lsp_status.on_attach,
--   capabilities = lsp_status.capabilities
-- }

-- Enable Rust diagnostics
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    virtual_text = false,
    signs = true,
    update_in_insert = true,
  }
)

-- Setup Telescope
require'telescope'.setup{
  defaults = {
    file_sorter = require'telescope.sorters'.get_fzy_sorter,
    prompt_prefix = ' >',
    color_devicons = true,

    file_previewer   = require'telescope.previewers'.vim_buffer_cat.new,
    grep_previewer   = require'telescope.previewers'.vim_buffer_vimgrep.new,
    qflist_previewer = require'telescope.previewers'.vim_buffer_qflist.new,
  },
  extensions = {
    fzy_native = {
      override_generic_sorter = false,
      override_file_sorter = true,
    },
    media_files = {
      filetypes = { "png", "webp", "jpg", "jpeg" },
      find_cmd = "rg"
    }
  }
}
require'telescope'.load_extension('fzy_native')
require'telescope'.load_extension('frecency')
require'telescope'.load_extension('media_files')

-- Other useful language servers (do a loop plz!)
-- require'lspconfig'.bashls.setup{}
-- require'lspconfig'.yamlls.setup{}
-- require'lspconfig'.pyright.setup{}
-- require'lspconfig'.dockerls.setup{}
-- require'lspconfig'.vimls.setup{}
require'lspconfig'.jsonls.setup {
  commands = {
    Format = {
      function()
        vim.lsp.buf.range_formatting({},{0,0},{vim.fn.line("$"),0})
      end
    }
  }
}

-- nvim_comment setup
require('nvim_comment').setup()

-- Setup compe
require'compe'.setup {
  enabled = true;
  autocomplete = true;
  debug = false;
  min_length = 1;
  preselect = 'enable';
  throttle_time = 80;
  source_timeout = 200;
  incomplete_delay = 400;
  allow_prefix_unmatch = false;
  max_abbr_width = 1000;
  max_kind_width = 1000;
  max_menu_width = 1000000;
  documentation = true;

  source = {
    path = true;
    buffer = true;
    calc = true;
    -- vsnip = true;
    nvim_lsp = true;
    nvim_lua = true;
    spell = true;
    tags = true;
    snippets_nvim = true;
    treesitter = true;
  };
}

-- nvim-lspinstall
local function setup_servers()
  require'lspinstall'.setup()
  local servers = require'lspinstall'.installed_servers()
  for _, server in pairs(servers) do
    if server == 'rust_analyzer' then
      nvim_lsp.rust_analyzer.setup({
        on_attach = on_attach,
        settings = {
          ['rust-analyzer'] = {
            checkOnSave = {
              extraArgs = {
                "--target-dir", "/tmp/rust-analyzer-check"
              }
            }
          }
        },
        capabilities = lsp_status.capabilities
      })
    elseif server == 'clangd' then
      nvim_lsp.clangd.setup {
        handlers = lsp_status.extensions.clangd.setup(),
        init_options = {
          clangdFileStatus = true
        },
        on_attach = lsp_status.on_attach,
        capabilities = lsp_status.capabilities
      }
    elseif server ~= 'sumneko_lua' then
      nvim_lsp[server].setup{}
    end
  end
end

setup_servers()

-- Automatically reload after `:LspInstall <server>` so we don't have to restart neovim
require'lspinstall'.post_install_hook = function ()
  setup_servers() -- reload installed servers
  vim.cmd("bufdo e") -- this triggers the FileType autocmd that starts the server
end
EOF

" Statusline
function! LspStatus() abort
  if luaeval('#vim.lsp.buf_get_clients() > 0')
    return luaeval("require('lsp-status').status()")
  endif

  return ''
endfunction

let g:airline_powerline_fonts = 1
" let g:airline_theme = 'onedark'
let g:airline#extensions#tabline#enabled = 1

" Code navigation shortcuts as found in :help lsp
" nnoremap <silent> <c-]> <cmd>lua vim.lsp.buf.definition()<CR>
" nnoremap <silent> K     <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> gD    <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> <c-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> 1gD   <cmd>lua vim.lsp.buf.type_definition()<CR>
nnoremap <silent> gr    <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> g0    <cmd>lua vim.lsp.buf.document_symbol()<CR>
nnoremap <silent> gW    <cmd>lua vim.lsp.buf.workspace_symbol()<CR>
" rust-analyzer does not yet support goto declaration
" re-mapped `gd` to definition
nnoremap <silent> gd    <cmd>lua vim.lsp.buf.definition()<CR>
" nnoremap <silent> gd    <cmd>lua vim.lsp.buf.declaration()<CR>

" Trigger completion with <tab>
" found in :help completion
" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Find files using Telescope command-line sugar.
" nnoremap <leader>ff <cmd>lua require'telescope.builtin'.find_files()<CR>
nnoremap <leader>ff <cmd>Telescope find_files<CR>
nnoremap <leader>fg <cmd>Telescope live_grep<CR>
nnoremap <leader>fb <cmd>Telescope buffers<CR>
nnoremap <leader>fh <cmd>Telescope help_tags<CR>
nnoremap <leader>fl <cmd>Telescope git_files<CR>

cnoremap kj <Esc> 
inoremap kj <Esc>
vnoremap kj <Esc>         " Remap in Visual and Select mode
xnoremap kj <Esc>         " Remap in Visual mode
snoremap kj <Esc>         " Remap in Select mode

cnoremap jj <Esc> 
inoremap jj <Esc>
" vnoremap jj <Esc>         " Remap in Visual and Select mode
" xnoremap jj <Esc>         " Remap in Visual mode
" snoremap jj <Esc>         " Remap in Select mode

cnoremap jk <Esc> 
inoremap jk <Esc>
" vnoremap jk <Esc>         " Remap in Visual and Select mode
" xnoremap jk <Esc>         " Remap in Visual mode
" snoremap jk <Esc>         " Remap in Select mode
" cnoremap ö <C-C>         " Remap in Command-line mode
" onoremap ö <esc>         " Remap in Operator pending mode

" have a fixed column for the diagnostics to appear in
" this removes the jitter when warnings/errors flow in
set statusline+=%{FugitiveStatusline()}

" if !exists('g:airline_symbols')
"   let g:airline_symbols = {}
" endif
" let g:airline_symbols.space = "\ua0"

" Prevent accidental writes to buffers that shouldn't be edited
autocmd BufRead *.ori set readonly
autocmd BufRead *.orig set readonly
autocmd BufRead *.pacnew set readonly

" Leave paste mode when leaving insert mode
autocmd InsertLeave * set nopaste

" Jump to last edit position on opening file
if has("autocmd")
  " https://stackoverflow.com/questions/31449496/vim-ignore-specifc-file-in-autocommand
  " au BufReadPost * if expand('%:p') !~# '\m/\.git/' && line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Follow Rust code style rules
" au Filetype rust source ~/.config/nvim/scripts/spacetab.vim
" au Filetype rust set colorcolumn=100

" Set updatetime for CursorHold
" 300ms of no cursor movement to trigger CursorHold
set updatetime=300
" Show diagnostic popup on cursor hover
" autocmd CursorHold * lua vim.lsp.diagnostic.show_line_diagnostics()

" Goto previous/next diagnostic warning/error
" nnoremap <silent> g[ <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
" nnoremap <silent> g] <cmd>lua vim.lsp.diagnostic.goto_next()<CR>

" Enable type inlay hints
autocmd CursorMoved,InsertLeave,BufEnter,BufWinEnter,TabEnter,BufWritePost *.rs
 \ lua require'lsp_extensions'.inlay_hints{ prefix = ' » ', highlight = "Comment", enabled = {"TypeHint", "ChainingHint", "ParameterHint"} }
