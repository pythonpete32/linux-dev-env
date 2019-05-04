" Theme                                                                                                                                                                   
syntax enable                                                                                                                                                             
colorscheme OceanicNext                                                                                                                                                   
                                                                                                                                                                          
                                                                                                                                                                          
" Spellchecking                                                                                                                                                           
"set spell spelllang=en_us                                                                                                                                                
                                                                                                                                                                          
" Set Line Numbers                                                                                                                                                        
set nu                                                                                                                                                                    
                                                                                                                                                                          
                                                                                                                                                                          
" Search                                                                                                                                                                  
set hlsearch                  " highlight the search                                                                                                                      
set incsearch                 " incremental search                                                                                                                        
set ignorecase                " search ignoring case                                                                                                                      
set showmatch                 " show matching bracket                                                                                                                     
                                                                                                                                                                          
                                                                                                                                                                          
" Syntax                                                                                                                                                                  
syntax on                                                                                                                                                                 
filetype on                   " Enable filetype detection                                                                                                                 
filetype plugin on            " Enable filetype-specific plugins                                                                                                          
filetype indent on            " Enable filetype-specific indenting                                                                                                        
                                                                                                                                                                          
                                                                                                                                                                          
" Tabs                                                                                                                                                                    
set autoindent smartindent    " auto/smart indent                                                                                                                         
set smarttab                  " tab and backspace are smart                                                                                                               
set tabstop=2                 " 6 spaces                                                                                                                                  
set shiftwidth=2                                                                                                                                                          
                                                                                                                                                                          
                                                                                                                                                                          
" (Shift + Enter) creates a new line without entering edit mode                                                                                                           
nmap <S-Enter> O<Esc>                                                                                                                                                     
nmap <CR> o<Esc>                                                                                                                                                          
                                                                                                                                                                          
                                                                                                                                                                          
" ALE                                                                                                                                                                     
autocmd StdinReadPre * let s:std_in=1                                                                                                                                     
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif  
