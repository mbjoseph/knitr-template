knitr-template
==============

This template for an academic journal article uses knitr, R Markdown, and pandoc. 
It is similar in spirit to [project-template](https://github.com/mbjoseph/project-template), but relies more heavily on Yihui Xie's [knitr](http://yihui.name/knitr/) package to compile the main document, rather than [GNU Make](http://www.gnu.org/software/make/). 

The main document that contains the article text and analysis is knitr-template.Rmd. 
The file conversion.R converts knitr-template.Rmd to .md, .html, .pdf, and .doc. 

The bibliography and in text citations rely on Carl Boettiger's  [knitcitations](https://github.com/cboettig/knitcitations) package. 
I'd recommend using the development version for best results (as of Nov 2013). 
The reference information is contained in the file refs.bib, which you could create with any population citation management program (e.g. [Mendeley](http://www.mendeley.com/)). 
