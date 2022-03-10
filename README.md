# MechaCar Statistical Analysis
# Overview
Through hypothesis testing, statistical testing, and linear regressions, I analyzed the production data for insights that may help the manufacturing team of MechaCar, to solve production troubles that are blocking progress.

# Resources
Data source: MechaCar_mpg.csv; Suspesnsion_Coil.csv

Software & Programming languages: R, Statisitcal Testing in Tidyverse Library 

# Summary 

## Linear Regression to Predict MPG

<img width="763" alt="Screen Shot 2022-03-09 at 4 05 42 PM" src="https://user-images.githubusercontent.com/94571150/157560531-3dc82034-c9ff-451c-85c3-c2c2c8a97ba4.png">

* To determine which variables provide a significant contribution to the linear model, we must look at the individual variable p-values. Vehicle length, ground clearance, and intercept provided a non-random amount of variance to the mpg values in the dataset.
* Is the slope of the linear model considered to be zero? Why or why not?
* To determine whether the slope of the linear model is considered to be zero or not we must look at the r-squared value and the p-value. The r-squared value is 0.7149, meaning that roughly 71% of the variablilty of our dependent variable (mpg) is explained using this linear model. The p-value is 5.35e-11 or 5.35 x 10-11, which is much smaller than our assumed significance level of 0.05%. Therefore, we can state that there is sufficient evidence to reject our null hypothesis, which means that the slope of our linear model is not zero.

*  This linear model could be considered effective in predicting mpg of MechaCar prototypes due to the fact that roughly 71% of the variablilty of our dependent variable (mpg) is explained using this linear model. However, there are only two variables that provide significant contributions to the linear model, meaning that there may be other variables that could help explain the variability of our dependent variable that have not been included in our model. Also, a significant intercept could mean that the significant features (such as vehicle length and ground clearance) may need scaling or transforming to help improve the predictive power of the model.

## Summary Statistics on Suspension Coils
### Total Summary

<img width="501" alt="Screen Shot 2022-03-09 at 4 12 19 PM" src="https://user-images.githubusercontent.com/94571150/157561227-38d55040-9aa2-4e86-b640-9ad01141b0db.png">

### Lot Summary

<img width="638" alt="Screen Shot 2022-03-09 at 4 14 44 PM" src="https://user-images.githubusercontent.com/94571150/157561458-d428bf76-4384-4cd3-b6ba-2bae0376c32e.png">

* The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 lbs per square inch. In the summary statistics on suspension coils above, the total summary across all lots is 62.29356, meaning that it meets design specifications as a whole. However, when we take a look at each lot individually we can see that Lot 1 (0.98) and Lot 2(7.5) meets design specifications but Lot 3(170.29), unfortunately, does not.

## T-Tests on Suspension Coils
* To determine if the manufacturing lots are statistically different from the population mean of 1,500 lbs per square inch, we have conducted a one sample T-Test for the total manufacturing data across all lots, and for each individual lot. 
### All Lots
<img width="403" alt="Screen Shot 2022-03-09 at 4 22 21 PM" src="https://user-images.githubusercontent.com/94571150/157562193-b47926f1-f0a0-42c8-9570-3c770a48206d.png">

* The p-value from the above t-test shows 0.06028 significance level. This is above our 0.05% significance level that we have used to measure significance across all lots. We do not have sufficient evidence to reject the null hypothesis, meaning that across all manufacturing lots, the mean is statistically similar to the population mean of 1,500 lbs per square inch.

### Lot 1
<img width="400" alt="Screen Shot 2022-03-09 at 4 23 32 PM" src="https://user-images.githubusercontent.com/94571150/157562255-4c1ec597-21c8-445a-b601-30529f99631e.png">

* The p-value from the above t-test shows 1 significance level. This is above our 0.05% significance level that we have used to measure significance across all lots. We do not have sufficient evidence to reject the null hypothesis, meaning that across all manufacturing lots, the mean is statistically similar to the population mean of 1,500 lbs per square inch.

### Lot 2 
<img width="404" alt="Screen Shot 2022-03-09 at 4 24 01 PM" src="https://user-images.githubusercontent.com/94571150/157562307-d39e1440-9c8f-4352-b7f7-752b5fe13b2d.png">

* The p-value from the above t-test shows 0.6072 significance level. This is above our 0.05% significance level that we have used to measure significance across all lots. We do not have sufficient evidence to reject the null hypothesis, meaning that across all manufacturing lots, the mean is statistically similar to the population mean of 1,500 lbs per square inch.

### Lot 3 
<img width="409" alt="Screen Shot 2022-03-09 at 4 24 25 PM" src="https://user-images.githubusercontent.com/94571150/157562338-651f3ce8-0e01-4086-919d-850bdda9e7d1.png">

* The p-value from the above t-test shows 0.04168 significance level. This is below our 0.05% significance level that we have used to measure significance across all lots. We have sufficient evidence to reject the null hypothesis, meaning that across all manufacturing lots, the mean is statistically different to the population mean of 1,500 lbs per square inch.

## Study Design: MechaCar vs Competition for Families
In order to quantify how the MechaChar performs against the competition we need to conduct a statitical study using specific metrics that would be of interest to the consumer, more specifically, targeting consumers who have families and are interested in certain metrics. This way, the consumer, can see real-life data and decide if MechaCar is worth buying for their family use. For this statistical study we are taking into account metrics for safety rating, highway fuel efficiency, and number of seats (the more the better). We need data relative to these metrics: a safety rating between 1-5, highway fuel efficiency, and number of seats between 1-8.

H0: The means across safety rating, highway fuel efficiency, and number of seats between MechaCar and Competition **are equal**.  
HA: At least one or more of the means across safety rating, highway fuel efficiency, and number of seats between MechaCar and Competition **are not equal**.  

We can conduct t-tests to compare the mean of each metric to the mean of each of the competition's relative metrics. We can also conduct a t-test to compare the mean across all metrics to the mean across all metrics of the competition's relative metrics. Using a significance level of 0.05% we can predict if MechaCar differs in safety rating, highway fuel efficiency, and number of seats. 

