lualatex thesis-new.tex
clear
lualatex thesis-new.tex
lualatex thesis-new.tex
lualatex -jobname=myoutput thesis.tex
clear
lualatex -jobname=docker thesis-new.tex
latexmk -lualatex -jobname=docker2 thesis.tex
latexmk -lualatex -jobname=docker2 thesis-new.tex
cls
clear
lualatex lualatex -jobname=docker thesis.tex
lualatex -jobname=docker thesis.tex
clear
