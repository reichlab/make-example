## a convention to include one "all" or other large target that includes many of your targets, in order
all: data/chicagoNMMAPS.csv figures/plot1.pdf

# write the dataset
# data is label for the make target
# it depends on one R script, code/save-data.R
# make keeps track of the last time that the "data" target was made
# if the dependency, i.e. what comes after the colon, in this case, code/save-data.R
#   was updated since that last time, then using `make` will trigger a re-build of this target
data/chicagoNMMAPS.csv: code/save-data.R
	Rscript code/save-data.R

figures/plot1.pdf: data/chicagoNMMAPS.csv code/make-figure.R
	Rscript code/make-figure.R
