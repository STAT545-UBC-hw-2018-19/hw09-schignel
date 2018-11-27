---
title: "English Word vowel frequency"
author: "Stephen Chignell"
date: "27 November, 2018"
output:
  html_document:
    keep_md: yes
---



On most *nix systems, the file `/usr/share/dict/words` contains a bunch of words. On my machine, it contains 235886 words.

I computed the number of vowels in each word and tabulated how many words have 0 vowels, 1 vowel, 2 vowels, etc.

The most frequent number of vowels is 4.


![*Fig. 1* A histogram showing the number vowels in English words.](hist_vowels.png)
