# Exporting to other file formats

# Rmd to HTML
require(knitr)
require(markdown)
knit(input = "knitr-template.Rmd", 
     output = "knitr-template.md")
markdownToHTML(file = "knitr-template.md", 
               output = "knitr-template.html", 
               options=c("use_xhml"))

# html to pdf
# requires a system (shell/terminal) call to pandoc
# (you need pandoc for this to work)
system("pandoc -H format.sty -V fontsize=12pt knitr-template.html -o knitr-template.pdf")

# html to doc or docx
system("pandoc knitr-template.html -o knitr-template.doc")
