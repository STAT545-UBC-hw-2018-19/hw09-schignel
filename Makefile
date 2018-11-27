all: report.html report2.html

clean:
	rm -f words.txt histogram.tsv histogram.png report.md report.html hist_vowels.tsv hist_vowels.png report2.md report2.html

report2.html: report2.rmd hist_vowels.tsv hist_vowels.png
	Rscript -e 'rmarkdown::render("$<")'

report.html: report.rmd histogram.tsv histogram.png
	Rscript -e 'rmarkdown::render("$<")'
	
hist_vowels.png: hist_vowels.tsv
	Rscript -e 'library(ggplot2); qplot(Vowels, Freq, data=read.delim("$<")); ggsave("$@")'
	rm Rplots.pdf
	
histogram.png: histogram.tsv
	Rscript -e 'library(ggplot2); qplot(Length, Freq, data=read.delim("$<")); ggsave("$@")'
	rm Rplots.pdf

hist_vowels.tsv: hist_vowels.r words.txt
	Rscript $<
	
histogram.tsv: histogram.r words.txt
	Rscript $<

#words.txt: /usr/share/dict/words
	#cp $< $@

words.txt:
	Rscript -e 'download.file("http://svnweb.freebsd.org/base/head/share/dict/web2?view=co", destfile = "words.txt", quiet = TRUE)'
