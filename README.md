# Project KAF

This repo stores my custom solutions. KAF stands for Kazım Anıl Functions.

## Functions Included

### auto_rep.R

- Replaces an old value with a new value in many columns from a specified data.table.
- By 2018-08-31, it can also handle NA valus at high speed as well.

### clean_ws.R

- If there are entries with more than one spaces in a text column, this function reduces the amount of spaces to 1.
- Replace empty rows with "NA" or "NULL" values.

### clean_post.R

- Cleans up tweets and instagram posts.

### clean_tokens.R

- Helps to clean tokens with specified rules from texts.

### dist_calc.R

-  Distance Calculator based on Latitude & Longitude of two locations.

### f1score.R

- Calculates F1 Score using Precision and Recall values.
- Calculates F1 Score using True Positive, False Positive and False Negative values.

### haftaningunu.R

- Returns the day of the week in Turkish.

### kNN.R

- Optimizes k value for k-Nearest-Neighbours algorithm given a training set.

### NaiveBayes_Calculator.R

-  Makes a baseline prediction based on the training set using Naive Bayes algorithm.

### one_hot.R

- Automatically encodes character / factor columns into dummy variables.

### prime_number_detector.R

- A brute-force algorithm which finds out prime numbers until the given limit.

### time_dif.R

- Calculates the seconds difference between two dates in HH:MM:SS format.

## Themes Included

[GGPlot2 Theme](https://raw.githubusercontent.com/kazimanil/project_kaf/master/gg_theme.R): An .R file which has my default ggplot2 schema.

[RMD_Template for R Markdown](https://raw.githubusercontent.com/kazimanil/project_kaf/master/RMD_Template.Rmd):A .RMd file which stores the default settings for a R Markdown document.

[TeX Template for R Markdown](https://raw.githubusercontent.com/kazimanil/project_kaf/master/preamble.tex): A .tex file which stores the default settings for my PDF outputs from R Markdown files.

[HTML Template for R Markdown](https://raw.githubusercontent.com/kazimanil/project_kaf/master/rmd_theme.css): A .CSS file which stores the default settings for my HTML outputs from R Markdown files.
