if "%1" EQU "" (set file=texsalq-doc) else (set file=%1)

set hifen=padraohifen
pdftex -ini macros\%hifen%.tex
pdftex -fmt=%hifen%.fmt %file%
bibtex %file%
pdftex -fmt=%hifen%.fmt %file%
pdftex -fmt=%hifen%.fmt %file%
del %hifen%.fmt %hifen%.log %file%.blg %file%.pgf
del %file%.aux %file%.ref %file%.bbl
::del %file%.log
