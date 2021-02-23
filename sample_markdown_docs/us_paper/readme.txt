From Eugenia:

Files in this folder: 

- a template for the paper (data update is in progress, this is with our initial data) in Rmd
- compiled output in pdf
- tex_templates has .tex template and style file .sty that .Rmd file uses to produce the pdf output 
  (basically, all packages and other format related options)
- selection.bib is the .bib file we have under lit_bib folder; placed here temporarily to resolve
  compilation issues; Rmd has a problem with bib files being place somewhere else, it works best
  when the bib file is in the same folder. 
  If it is in a different folder, there seem to be problems with
  how many levels up the relative path needs to go or something like that
  e.g. "../../lit_bib/selection.bib" for the bibliography option in Rmd does not work
  (I've seen complaints about this dated 2019 and 2020)
 
 Comments:
 
- related to bibliography, references are always placed by R Markdown at the end, and
   it seems almost impossible to make it place references first and then say the appendix
- in this file, there are examples of: figures, regression table, table with data (via kable)
- overall, I like R Markdown when it is work in progress, but for the final stage of the paper
  I usually produce .tex output and fix all formatting in there (e.g. some packages in R produce 
  tables in a fixed format with not too many options to adjust)