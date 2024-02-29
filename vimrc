inoremap jk <Esc>
filetype plugin indent on

" For those slowpoke pinky shifts
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev qw wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall

let g:LanguageClient_serverCommands = {
    \ 'sql': ['sql-language-server', 'up', '--method', 'stdio'],
    \ }
  
function! PasteSplitContent()
  let split_list = split(@+, "\n")

  let current_lineno = line('.')
  while !empty(split_list) && current_lineno < line('$')
    let current_lineno+=1
    let paste_content = remove(split_list, 0)
    call setline(current_lineno, getline(current_lineno) . paste_content)
  endwhile
endfunction

" CtrlP
" set wildignore+=*/vendor/* " Golang
let g:ctrlp_show_hidden = 1

nnoremap <leader>sf <Plug>CtrlSFPrompt

" Leetcode
let g:leetcode_browser = 'firefox'
let g:leetcode_solution_filetype = 'golang'

let g:fugitive_gitlab_domains = ["https://gitlab.sre-internal.gopuff.com", "https://gitlab.sre.gopuff.com", "https://git.astuart.co", "https://git.stuart.fun"]

" NO EX MODE
map Q <Nop>

" set termguicolors
set nocompatible "This fixes the problem where arrow keys do not function properly on some systems.
set t_Co=256 "256 colors.
set background=dark
set cursorline "Highlight the cursor row.
set cursorcolumn "Highlight the cursor column.
" set title "Make the window title awesome."
syntax on  "Enables syntax highlighting for programming languages
set hidden "Allow changing buffers without having to write changes.
"set mouse=a  "Allows you to click around the text editor with your mouse to move the cursor
set showmatch "Highlights matching brackets in programming languages
set autoindent  "If you're indented, new lines will also be indented
set smartindent  "Automatically indents lines after opening a bracket in programming languages
set backspace=2  "This makes the backspace key function like it does in other programs.
set tabstop=2  "How much space Vim gives to a tab
set number  "Enables line numbering
set smarttab  "Improves tabbing
set shiftwidth=2  "Assists code formatting
set expandtab
set diffopt+=vertical

"Search stuff
set incsearch ignorecase smartcase 

let g:autofmt_autosave = 1

" LSP

" if executable('rls')
"     au User lsp_setup call lsp#register_server({
"         \ 'name': 'rls',
"         \ 'cmd': {server_info->['rls']},
"         \ 'allowlist': ['rust'],
"         \ })
" endif

" function! s:on_lsp_buffer_enabled() abort
"     setlocal omnifunc=lsp#complete
"     setlocal signcolumn=yes
"     if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif
"     nmap <buffer> gd <plug>(lsp-definition)
"     nmap <buffer> gr <plug>(lsp-references)
"     nmap <buffer> gi <plug>(lsp-implementation)
"     nmap <buffer> gt <plug>(lsp-type-definition)
"     nmap <buffer> <leader>rn <plug>(lsp-rename)
"     nmap <buffer> [g <Plug>(lsp-previous-diagnostic)
"     nmap <buffer> ]g <Plug>(lsp-next-diagnostic)
"     nmap <buffer> K <plug>(lsp-hover)
    
"     " refer to doc to add more commands
" endfunction

" augroup lsp_install
"     au!
"     " call s:on_lsp_buffer_enabled only for languages that has the server registered.
"     autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
" augroup END

"set shellcmdflag=-ic
"setlocal spell  "Enables spell checking (CURRENTLY DISABLED because it's kinda annoying). Make sure to uncomment the next line if you use this.
"set spellfile=~/.vimwords.add  "The location of the spellcheck dictionary. Uncomment this line if you uncomment the previous line.


set foldmethod=manual  "Lets you hide sections of code
" set foldlevelstart=99

" nnoremap ; :
" nnoremap : ;

" nnoremap giy "+
" nnoremap gy "*
" vnoremap giy "+
" vnoremap gy "*
" nnoremap sip "+
" nnoremap sp "*

"--- The following commands make the navigation keys work like standard editors
imap <silent> <Down> <C-o>gj
imap <silent> <Up> <C-o>gk
map <F5> <Esc>:wall<CR>
map <F6> <Esc>:wqall<CR>
" imap <F5> <Esc>:wall<CR>
imap <F6> <Esc>:wqall<CR>
map <F10> <Esc>:TagbarToggle<CR>
nmap <silent> <Down> gj
nmap <silent> <Up> gk
" nmap <silent> ;; :bnext<CR>
" nmap <silent> ;1 :b1<CR>
" nmap <silent> ;2 :b2<CR>
" nmap <silent> ;3 :b3<CR>
" nmap <silent> ;4 :b4<CR>
" nmap <silent> ;5 :b5<CR>
" nmap <silent> ;3 :b3<CR>
"--- Ends navigation commands
"--- The following adds a sweet menu, press F4 to use it.

nmap <Leader>gg :GitGutterLineHighlightsToggle<CR>
nmap <Leader>gn :GitGutterNextHunk<CR>
nmap <Leader>gu :GitGutterUndoHunk<CR>
nmap <Leader>nl :r<Space>!nc<Space>-l<Space>54321<CR>

set wildmenu
set cpo-=<
set wcm=<C-Z>
map <F2> :NERDTreeToggle<CR>
let &colorcolumn="81,120,160"

let g:vim_markdown_folding_disabled=1
let g:vim_markdown_conceal_code_blocks=0
let g:vim_markdown_conceal=0
au FileType markdown set tw=80

au BufRead,BufNewFile .jshintrc set filetype=json
let g:vim_json_syntax_conceal = 0

"Custom filename mappings
au BufRead,BufNewFile resolv.conf set filetype=sh
au BufRead,BufNewFile *.ino set filetype=arduino
au BufRead,BufNewFile *.tsx set filetype=typescript.tsx
au BufRead,BufNewFile *.es6 set filetype=es6.javascript
au BufRead,BufNewFile *test/spec/* set filetype=jasmine.javascript
au BufRead,BufNewFile *.xsl set filetype=xsl.xml
au BufRead,BufNewFile *.{jsp,html} set filetype=html
au BufRead,BufNewFile *.{xjb} set filetype=xjb.xml
au BufRead,BufNewFile Gruntfile.js set filetype=grunt.javascript
au BufRead,BufNewFile gulpfile* set filetype=gulp.javascript
au BufRead,BufNewFile *.tmpl.html set filetype=html.gohtmltmpl
au BufRead,BufNewFile Docker* set filetype=dockerfile
au BufRead,BufNewFile 0Docker* set filetype=dockerfile
au BufRead,BufNewFile Make* set filetype=make
au BufRead,BufNewFile *.copybook set filetype=cobol


"Autoreload xrdb
function! Xrdb()
  let cmd = "xrdb " . expand("%")
  let resp = system(cmd)
endfunction
au BufWritePost *.Xresources call Xrdb()

" let g:javascript_conceal=1
" set conceallevel=1
" let javascript_enable_domhtmlcss=1

"Function to commit.
function! GitCommit ()
  execute 'write'
  let message = input('Enter commit message: ')
  execute '!git add ' . bufname('%') . ' && git commit -m ''' . message . ''';'
endfunction

imap <F7> <Esc>:call GitCommit()<CR>
map <F7> <Esc>:call GitCommit()<CR>
" map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

"Yank all lines to clipboard and return to place
map <leader>gy mMgg"*yG'M

let mapleader="\\"

" GO Settings

" completion
" au filetype go inoremap <buffer> . .<C-x><C-o>

" au BufRead,BufNewFile *.yaml,*.yml set ft=helm
au BufRead,BufNewFile */templates/*/*.yaml,*/templates/*/*.yml set ft=helm
au FileType yaml let g:indentLine_char = '⦙'

" au BufRead,BufNewFile go.mod set ft=gomod
" au FileType go nmap <leader>a <Plug>(go-alternate-edit)
" au FileType go nmap <leader>r <Plug>(go-run)
" au FileType go nmap <leader>b <Plug>(go-build)
" au FileType go nmap <leader>t <Plug>(go-test)
" au FileType go nmap <leader>tf <Plug>(go-test-func)
" au FileType go nmap <leader>c <Plug>(go-coverage-toggle)
" au FileType go nmap <leader>gb <Plug>(go-coverage-browser)
" au FileType go nmap <leader>gd <Plug>(go-doc)
" au FileType go nmap <leader>gs <Plug>(go-sameids-toggle)
" " au FileType go nmap <leader>gv <Plug>(go-doc-vertical)
" au FileType go nmap <leader>i <Plug>(go-info)
" au FileType go nmap <leader>gi <Plug>(go-install)
" au FileType go nmap <leader>ge <Plug>(go-iferr)
" au FileType go nmap <leader>gr <Plug>(go-rename)
" au FileType go nmap <leader>s <Plug>(go-implements)
" " au FileType go nested :TagbarOpen

" au FileType go nmap <leader>d :!dlv debug .<CR>
" au FileType go nmap <leader>mm :call BGMake('make')<CR>
" au FileType go nmap <leader>mi :call BGMake('make install')<CR>

" au FileType go let g:go_addtags_transform="camelcase"
" au FileType go let g:go_auto_sameids=1

" nmap <leader>md :call BGMake('make deploy')<CR>
" nmap <leader>mk :call BGMake('make')<CR>

function! BGMakeDone(job, status)
  " Read the output from the command into the quickfix window
  " echo job
  if a:status != 0
    execute "30split " . g:output
  endif
  " Open the quickfix window
  echo 'Done deploying code'
  unlet g:output
endfunction

function! BGMake(action)
  if exists('g:output')
    echo 'Already running'
  else 
    let g:output = tempname()
    call job_start(a:action, {'out_name': g:output, 'out_io': 'file', 'exit_cb': 'BGMakeDone', 'err_io': 'file', 'err_name': g:output})
    echo 'Deploying code'
  endif
endfunction

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_def_mode = 'gopls'
let g:go_info_mode = 'gopls'

call camelcasemotion#CreateMotionMappings(',')


let g:go_snippet_case_type="camelcase"
let g:go_fmt_command= "goimports"
let g:syntastic_javascript_checkers = ['jscs']

" GO+syntastic settings
let g:syntastic_go_checkers=["golangci_lint", "golint", "govet", "errcheck"]
" let g:syntastic_mode_map = { "mode": "active" }
let g:syntastic_mode_map = { "mode": "active", "passive_filetypes": ["xsl"] }
let g:go_list_type = "quickfix"

" ale
let g:ale_linters = {'go': ['golangci-lint', 'gopls', 'go vet'], 'proto': ['buf-lint',], 'sql': ['sqlint',],}
let g:ale_fixers = {'go': ['gopls'], 'proto': ['buf-lint',], 'sql': ['sqlint',],}
" let g:ale_linters_explicit = 1
let g:ale_go_golangci_lint_options = '
      \ --enable-all
      \ --disable=errcheck
      \ --disable=forbidigo
      \ --disable=gomnd
      \ --disable=ifshort
      \ --disable=funlen
      \ --disable=gochecknoinits
      \ --disable=exhaustivestruct
      \ --disable=exhaustruct
      \ --disable=gochecknoglobals
      \ --disable=gofumpt
      \ --disable=wrapcheck
      \ --disable=varnamelen
      \ --disable=depguard
      \ --disable=godot
      \ --disable=tagliatelle
      \ --disable=wsl
      \ --disable=nlreturn
      \'
let g:ale_go_golangci_lint_package = 1
" let g:ale_set_signs = 0

" JS settings

" au FileType grunt.javascript nmap <leader>gr :!grunt<CR>
" au FileType gulp.javascript nmap <leader>gr :!gulp<CR>

au FileType javascript nmap <leader>gnd :!node .<CR>
au FileType javascript nmap <leader>r :!node %<CR>
au FileType javascript nmap <leader>b :!gulp<CR>

au FileType es6.javascript nmap <leader>r :!babel-node %<CR>

" BASH Settings
au FileType sh nmap <leader>r :!./%<CR>
au FileType sh nmap <leader>s :!sudo %<CR>

au FileType groovy nmap <leader>r :!groovy %<CR>

" au FileType typescript.jsx UltiSnipsAddFiletypes xml
" au FileType javascript.jsx UltiSnipsAddFiletypes xml
" au FileType typescriptreact UltiSnipsAddFiletypes javascript

au BufRead,BufNewFile *.gradle set filetype=gradle.groovy
au FileType gradle* nmap <leader>r :!gradle build<CR>

"YCM Settings (no conflict with Ultisnips)

" \ 'go': 1,
" \ 'md': 1,
" let g:ycm_filetype_blacklist = {
" \ 'javascript.jsx': 1,
" \ 'python': 1,
" \}
" let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
" let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']

" better key bindings for UltiSnipsExpandTrigger
" let g:UltiSnipsExpandTrigger = "<Plug>(ultisnips_expand)"
" let g:UltiSnipsJumpForwardTrigger = "<Plug>(ultisnips_jump_forward)"

" let g:UltiSnipsSnippetDirectories = ["UltiSnips", "snips"]

" au FileType sql nmap <leader>r :call RunSql()<CR>
" let g:sql_type_default = 'pgsql'
" au FileType sql set ft=pgsql

" function! RunSql ()
"   if exists('g:psql_cmd')
"     execute 'write'
"     execute '!' . g:psql_cmd . ' < ' . bufname('%') . '| less ;'
"   endif
" endfunction

function! FormatXML ()
  execute '%s/<\([^>]\)*>/\r&\r/g'
  normal! gg=G
  normal! ^O
  execute 'g/^$/d'
endfunction

let g:jsx_ext_required = 0
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 1

set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
"
" let g:syntastic_javascript_checkers=["eslint"]
" let g:syntastic_typescript_checkers=["eslint"]
" let g:syntastic_jsx_checkers=["eslint"]
" let g:syntastic_java_checkers=[]

" " Python settings
" " let g:pymode_python = 'python3'
" let g:pymode_rope_complete_on_dot = 0
" let g:pymode_rope_regenerate_on_write = 0
" let g:pymode_rope = 1
" let g:pymode_rope_completion = 1
" let g:pymode_rope_completion_bind = "<C-x>o"
" let g:pymode_rope_autoimport = 1
" let g:pymode_options_max_line_length = 300
" " let g:pymode_rope_goto_definition_bind = "<C-g>"
" au FileType python nmap <leader>gr :!python %<CR>
"
au FileType yaml nmap <leader>r :KubeApply<CR>

function! DoPrettyXML()
  " save the filetype so we can restore it later
  let l:origft = &ft
  set ft=
  " delete the xml header if it exists. This will
  " permit us to surround the document with fake tags
  " without creating invalid xml.
  1s/<?xml .*?>//e
  " insert fake tags around the entire document.
  " This will permit us to pretty-format excerpts of
  " XML that may contain multiple top-level elements.
  0put ='<PrettyXML>'
  $put ='</PrettyXML>'
  silent %!xmllint --format -
  " xmllint will insert an <?xml?> header. it's easy enough to delete
  " if you don't want it.
  " delete the fake tags
  2d
  $d
  " restore the 'normal' indentation, which is one extra level
  " too deep due to the extra tags we wrapped around the document.
  silent %<
  " back to home
  1
  " restore the filetype
  exe "set ft=" . l:origft
endfunction

command! PrettyXML call DoPrettyXML()

au FileType rust nmap <leader>r :RustRun<CR>
let g:copilot_filetypes = {'markdown': v:true, 'yaml': v:true, 'helm': v:true}
" let g:context_enabled = 1
