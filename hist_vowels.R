words <- readLines("words.txt")
Vowels <- stringr::str_count(words, "[aeiou]")
hist_vowels <- table(Vowels)
write.table(hist_vowels, "hist_vowels.tsv",
            sep = "\t", row.names = FALSE, quote = FALSE)