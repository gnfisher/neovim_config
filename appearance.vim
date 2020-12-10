" Treat <li> and <p> tags like the block tags they are
let g:html_indent_tags = 'li\|p'

" only show the parent folder in tabline if nested deeper.
function! TabLabel(n)
  let buflist = tabpagebuflist(a:n)
  let winnr = tabpagewinnr(a:n)
  let currentBuffPath = bufname(buflist[winnr - 1])
  return fnamemodify(currentBuffPath, ":h:t") . "/" . fnamemodify(currentBuffPath, ":t")
endfunction

function! TabLine()
  let s = ''
  for i in range(tabpagenr('$'))
    if i + 1 == tabpagenr()
      let s .= '%#TabLineSel#'
    else
      let s .= '%#TabLine#'
    endif
    let s .= ' %{TabLabel(' . (i + 1) . ')} '
  endfor
  let s .= '%#TabLineFill#%T'
  return s
endfunction

set tabline=%!TabLine()
syntax enable
" set t_Co=256 " 256 colors
" a better pattern for drawing vertical borders.
set fillchars+=vert:\|
" set termguicolors
set background=dark
colorscheme solarized
" LuciusDarkHighContrast
highlight clear SignColumn
let g:is_posix = 1

" let g:terminal_color_0  = '#303030'
" let g:terminal_color_1  = '#ff8787'
" let g:terminal_color_2  = '#d7ffaf'
" let g:terminal_color_3  = '#ffffd7'
" let g:terminal_color_4  = '#afffff'
" let g:terminal_color_5  = '#ffd7ff'
" let g:terminal_color_6  = '#afffd7'
" let g:terminal_color_7  = '#eeeeee'
" let g:terminal_color_8  = '#303030'
" let g:terminal_color_9  = '#ff8787'
" let g:terminal_color_10 = '#d7ffaf'
" let g:terminal_color_11 = '#ffffd7'
" let g:terminal_color_12 = '#afffff'
" let g:terminal_color_13 = '#ffd7ff'
" let g:terminal_color_14 = '#afffd7'
" let g:terminal_color_15 = '#eeeeee'


