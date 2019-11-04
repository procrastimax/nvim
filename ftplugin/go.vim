set noexpandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4

" set omni patterns to enable go completion
call deoplete#custom#option('omni_patterns', { 'go': '[^. *\t]\.\w*',})
