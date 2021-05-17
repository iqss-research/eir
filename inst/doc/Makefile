##
##  ei doc Makefile
##  
##  If you invoke make from command line, run ./runSweave.sh first
##
##
##  make command will be issued in two possible ways:
##  1- from command line
##  2- during R CMD build
##        -- R CMD build first run Sweave on all the vignettes in inst/doc folder and 
##           then if a Makefile is found, run that Makefile
##


all:
	/usr/bin/R CMD Sweave ei.Rnw
	pdflatex ei
