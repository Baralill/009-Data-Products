---
title       : Assignment
subtitle    : Interactive Application built in Shiny.
author      : 
date        : 30th January 2016
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides

---
Purpose
========================================================

This application achieves 3 purposes:

1. It allows the user to select an 'x' and 'y' variable and plot a scattergraph of the observations.

2. It then uses a 'loess' curve to highlight the relationship between the two variables.

3. Finally, it calculates the correlation coefficient

---
Application Example
========================================================

The data used in the application is taken from the <i> trees </i> dataset located in the <i> datasets  </i> package within R.

A summary of this dataset is shown in the following table


```r
summary(trees)
```

```
##      Girth           Height       Volume     
##  Min.   : 8.30   Min.   :63   Min.   :10.20  
##  1st Qu.:11.05   1st Qu.:72   1st Qu.:19.40  
##  Median :12.90   Median :76   Median :24.20  
##  Mean   :13.25   Mean   :76   Mean   :30.17  
##  3rd Qu.:15.25   3rd Qu.:80   3rd Qu.:37.30  
##  Max.   :20.60   Max.   :87   Max.   :77.00
```

---
Plot shown in application
========================================================
The plot in the application allows the user to select which variables to plot. The example below shows the <i> Girth </i> plotted against the <i> Height </i> variable. The loess line indicates a positively increasing relationship between Girth and Height. The correlation between these 2 factors is slightly more than 0.5 showing that there is not a strong linear relationship.
![plot of chunk unnamed-chunk-2](assets/fig/unnamed-chunk-2-1.png)

---
Possible Usages
========================================================

This application could be useful in:

* understanding data relationships more visually
* looking for non-linear relationships between factors which may not be picked up via the correlation coefficient.
* creating polynomial factors for input into prediction algorithms.












