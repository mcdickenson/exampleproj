exampleproj
===========

This project contains a Makefile and sample article for creating a new project using R and LaTeX. 

To use this Makefile to create a new project:
1. Download the Makefile and article-generic.tex
1. Create a folder for your new project, e.g. (on Unix) `mkdir exampleproj'
1. Copy the downloaded files into this new folder
1. Run make: `make'

Following the steps above and using the file as-is will create: 
* a setup.R file for clearing the workspace, setting paths, and loading libraries
* a data directory for storing data files (csv, rda, etc)
* a drafts directory for LaTeX, including a generic starter article
* a graphics library for storing plots and figures to include in your article
* an rcode directory for your R scripts
