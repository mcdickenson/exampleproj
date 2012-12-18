#########################################
### Makefile for R and LaTeX Projects ###
### Matt Dickenson, 2012
### http://mattdickenson.com 
### Released under Creative Commons 
#########################################

all: 
	@echo creating project $${PWD##*/}
	mkdir data;\
	mkdir drafts;\
	mkdir graphics;\
	mkdir rcode;\
	touch setup.R
	@echo "# project: $${PWD##*/}" > setup.R
	@echo "# setup file" >> setup.R
	@echo "" >> setup.R
	@echo "rm(list=ls())" >> setup.R 
	@echo "if(Sys.info()['user']=='$$(whoami)'){" >> setup.R
	@echo "  pathData='$(PWD)/data';" >> setup.R 
	@echo "  pathGraphics='$(PWD)/graphics';" >> setup.R 
	@echo "  pathCode='$(PWD)/rcode'" >> setup.R 
	@echo "}" >> setup.R
	@echo "" >> setup.R 
	@echo "#load packages here" >> setup.R
	# TO ADD PACKAGES USE NEXT LINE
	# @echo "require(PACKAGENAME)" >> setup.R
	touch rcode/start.R 
	@echo "# project: $${PWD##*/}" > rcode/start.R
	@echo "# start file" >> rcode/start.R
	@echo "" >> rcode/start.R
	@echo "setwd('${PWD}')" >> rcode/start.R
	@echo "source('setup.R')" >> rcode/start.R 
	@echo "setwd(pathData) # for example" >> rcode/start.R
	touch drafts/$${PWD##*/}Draft.tex
	cat article-generic.tex > drafts/$${PWD##*/}Draft.tex

TEXFILE= paper
$(TEXFILE).pdf: $(TEXFILE).tex
	rubber --pdf $(TEXFILE)