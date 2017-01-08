:map <F5> :!clear&&pdflatex -output-directory=build  %<CR>
:map <F6> :silent !evince build/%:t:r.pdf &<CR>
