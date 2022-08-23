let g:airline#themes#neobeans#palette = {}

" Normal mode
let s:N1   = [ '#000000' , '#1abc9c' , 16 , 36 ]
let s:N2   = [ '#ffffff' , '#444444' , 15 , 238 ]
let s:N3   = [ '#ffffff' , '#35383b' , 15  , 234 ]
let g:airline#themes#neobeans#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

" Here we define overrides for when the buffer is modified.  This will be
" applied after g:airline#themes#neobeans#palette.normal, hence why only certain keys are
" declared.
let g:airline#themes#neobeans#palette.normal_modified = {
      \ 'airline_c': [ '#1abc9c' , '#35383b' , 37     , 234      , ''     ] ,
      \ }

" Insert Mode
let s:I1 = [ '#000000' , '#d78700' , 16 , 202 ]
let s:I2   = [ '#ffffff' , '#444444' , 15 , 238 ]
let s:I3   = [ '#ffffff' , '#35383b' , 15  , 234 ]
let g:airline#themes#neobeans#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#neobeans#palette.insert_modified = {
      \ 'airline_c': [ '#d78700' , '#35383b' , 172     , 234      , ''     ] ,
      \ }
let g:airline#themes#neobeans#palette.insert_paste = {
      \ 'airline_a': [ s:I1[0]   , '#d78700' , s:I1[2] , 172     , ''     ],
      \ }

let g:airline#themes#neobeans#palette.replace = copy(g:airline#themes#neobeans#palette.insert)
let g:airline#themes#neobeans#palette.replace.airline_a = [ s:I2[0]   , '#af0000' , s:I2[2] , 124     , ''     ]
let g:airline#themes#neobeans#palette.replace_modified = g:airline#themes#neobeans#palette.insert_modified

let s:V1 = [ '#000000' , '#00aae6' , 16 , 38 ]
let s:V2   = [ '#ffffff' , '#444444' , 15 , 238 ]
let s:V3   = [ '#ffffff' , '#35383b' , 15  , 234 ]
let g:airline#themes#neobeans#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#neobeans#palette.visual_modified = {
      \ 'airline_c': [ '#00aae6' , '#35383b' , 38     , 234      , ''     ] ,
      \ }

let s:IA1 = [ '#4e4e4e' , '#1c1c1c' , 59 ,  16 , '' ]
let s:IA2 = [ '#4e4e4e' , '#262626' , 59 , 16 , '' ]
let s:IA3 = [ '#4e4e4e' , '#303030' , 59 , 234 , '' ]
let g:airline#themes#neobeans#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
let g:airline#themes#neobeans#palette.inactive_modified = {
      \ 'airline_c': [ '#875faf' , '' , 97 , 234 , '' ] ,
      \ }

" Accents are used to give parts within a section a slightly different look or
" color. Here we are defining a "red" accent, which is used by the 'readonly'
" part by default. Only the foreground colors are specified, so the background
" colors are automatically extracted from the underlying section colors. What
" this means is that regardless of which section the part is defined in, it
" will be red instead of the section's foreground color. You can also have
" multiple parts with accents within a section.
let g:airline#themes#neobeans#palette.accents = {
      \ 'red': [ '#ff0000' , '' , 196 , ''  ]
      \ }

" Tabline Plugin
let g:airline#themes#neobeans#palette.tabline = {
      \ 'airline_tabmod': ['#000000', '#00aae6','16','38'],
      \ 'airline_tabmod_unsel':  ['#000000', '#00dfff','16','45']
      \ }

" Here we define the color map for ctrlp.  We check for the g:loaded_ctrlp
" variable so that related functionality is loaded iff the user is using
" ctrlp. Note that this is optional, and if you do not define ctrlp colors
" they will be chosen automatically from the existing palette.
if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#neobeans#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ '#d7d7ff' , '#5f00af' , 189 , 55  , ''     ],
      \ [ '#ffffff' , '#875fd7' , 15 , 98  , ''     ],
      \ [ '#5f00af' , '#ffffff' , 55  , 15 , 'bold' ])

