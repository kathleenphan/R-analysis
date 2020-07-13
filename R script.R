MPG
mtcars = read.csv("MechaCar_mpg.csv")
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mtcars)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mtcars))
Call:
  lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + 
       ground_clearance + AWD, data = mtcars)

Residuals:
  Min       1Q   Median       3Q      Max 
-19.4701  -4.4994  -0.0692   5.4433  18.5849 

Coefficients:
  Estimate Std. Error t value Pr(>|t|)    
(Intercept)      -1.040e+02  1.585e+01  -6.559 5.08e-08 ***
  vehicle_length    6.267e+00  6.553e-01   9.563 2.60e-12 ***
  vehicle_weight    1.245e-03  6.890e-04   1.807   0.0776 .  
spoiler_angle     6.877e-02  6.653e-02   1.034   0.3069    
ground_clearance  3.546e+00  5.412e-01   6.551 5.21e-08 ***
  AWD              -3.411e+00  2.535e+00  -1.346   0.1852    
---
  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 8.774 on 44 degrees of freedom
Multiple R-squared:  0.7149,	Adjusted R-squared:  0.6825 
F-statistic: 22.07 on 5 and 44 DF,  p-value: 5.35e-11

SUSPENSION COIL
suscoil = read.csv("Suspension_Coil.csv")
summarize_metrics <- suscoil %>% summarize(Mean = mean(suscoil$PSI), Median = median(suscoil$PSI), Variance = var(suscoil$PSI), Standard_Deviation = sd(suscoil$PSI))
sample_table <- suscoil %>% sample_n(50)
t.test(log10(sample_table$PSI),mu=mean(log10(suscoil$PSI)))

One Sample t-test

data:  log10(sample_table$PSI)
t = -0.78142, df = 49, p-value = 0.4383
alternative hypothesis: true mean is not equal to 3.175732
95 percent confidence interval:
  3.174668 3.176200
sample estimates:
  mean of x 
3.175434
