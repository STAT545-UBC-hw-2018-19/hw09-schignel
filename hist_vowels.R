# Read in the words data
words <- readLines("words.txt")

# Count vowel frequency
Vowels <- stringr::str_count(words, "[AaeEiIoOuU]")

# Send to table
hist_vowels <- table(Vowels)
write.table(hist_vowels, "hist_vowels.tsv",
            sep = "\t", row.names = FALSE, quote = FALSE)