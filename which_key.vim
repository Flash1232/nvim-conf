" Leader Key Maps

" Timeout
let g:which_key_timeout = 100

let g:which_key_display_names = {'<CR>': '↵', '<TAB>': '⇆'}

" Map leader to which_key
nnoremap <silent> <leader> :silent <c-u> :silent WhichKey '<leader>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<leader>'<CR>

let g:which_key_map =  {}
let g:which_key_sep = '→'

" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0
let g:which_key_max_size = 0

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

" Single mappings
let g:which_key_map['/'] = 'which_key_ignore'
let g:which_key_map['e'] = [ ':NvimTreeToggle'                                 , 'explorer' ]
let g:which_key_map['ff'] = [ ':Telescope find_files'                           , 'find files' ]
let g:which_key_map['h'] = [ ':let @/ = ""'                                    , 'no highlight' ]
let g:which_key_map['r'] = [ ':bufdo e!'                                    , 'reload files' ]
" let g:which_key_map['<leader>'] = [ ':'                                    , 'reload files' ]

" let g:which_key_map.l = {
"   'name' : '+lsp',
"   \ 
" }

let g:which_key_map.f = {
      \ 'name' : '+search',
      \ 'ff' : [':Telescope find_files', 'files'],
      \ 'fg' : [':Telescope live_grep', 'text'],
      \ 'fb' : [':Telescope buffers', 'buffers'],
      \ 'fh' : [':Telescope help_tags', 'help'],
      \ 'fl' : [':Telescope git_files', 'git files'],
      \ }

let g:which_key_map.t = {
      \ 'name' : '+terminal',
      \ 'to' : [':Lspsaga open_floaterm', 'terminal'],
      \ 'tc' : [':Lspsaga close_floaterm', 'terminal'],
      \ }

let g:which_key_map.R = {
      \ 'name' : '+Find_Replace' ,
      \ 'f' : [':Farr --source=vimgrep'    , 'file'],
      \ 'p' : [':Farr --source=rgnvim'     , 'project'],
      \ }

call which_key#register(';', "g:which_key_map")
