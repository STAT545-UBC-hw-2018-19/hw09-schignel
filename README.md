STAT 547: Homework 09
=============

### Welcome to the repository!

This project is all about **automated analyis and pipelines**, using the `make` functionality in R. 

Most of the material here is an extension of **Shaun Jackman** and **Jenny Bryan's** [activity](http://stat545-ubc.github.io/automation04_make-activity.html) (original code [here](https://github.com/STAT545-UBC/make-activity)) from [STAT 545](http://stat545-ubc.github.io).

**My additions include:** 

- Added an .R script [hist_vowels.R](https://github.com/STAT545-UBC-students/hw09-schignel/blob/master/hist_vowels.R), which reads in the [words.txt](https://github.com/STAT545-UBC-students/hw09-schignel/blob/master/words.txt) file created by the original code, and uses the `stringr` package to create a frequency table of vowels in the English language. 

- Added an .rmd script [report2.rmd](https://github.com/STAT545-UBC-students/hw09-schignel/blob/master/report2.rmd) that creates an [.html report](https://htmlpreview.github.io/?https://github.com/STAT545-UBC-students/hw09-schignel/blob/master/report2.html) from the outputs of the vowels analysis. 

- Added both of the new scripts to the project [makefile](https://github.com/STAT545-UBC-students/hw09-schignel/blob/master/Makefile), and added a the creation of a graph for the vowels analysis. I then updated the relevant dependencies. 


While the analysis is simple, i'd say it's still a more useful automation than *this*:
![](https://media.giphy.com/media/3rgXByefj5zvCcodOM/giphy.gif)