# Exporting to other file formats

# helper function to install packages if not already installed
usePackage <- function(p) {
  if (!is.element(p, installed.packages()[,1]))
    install.packages(p, dep = TRUE)
  require(p, character.only = TRUE)
}

# load/install necessary packages
usePackage("knitr")
usePackage("markdown")
usePackage("devtools")

# convert Rmd to HTML
knit(input = "knitr-template.Rmd", 
     output = "knitr-template.md")
markdownToHTML(file = "knitr-template.md", 
               output = "knitr-template.html", 
               options=c("use_xhml"))

# convert html to pdf
# requires a system (shell/terminal) call to pandoc
# (you need pandoc for this to work)
system("pandoc knitr-template.html -o knitr-template.pdf")

# html to doc or docx
system("pandoc knitr-template.html -o knitr-template.doc")
