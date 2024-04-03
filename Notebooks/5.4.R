
# Problem 5.4 

#Download a data file of interest to you. Read the file into R and order the data by one of the variables
#(a) use the sample function in R to draw a simple random sample of size 5 from this population. What is the average value of the variable of interest in your sample?
#(b) Repeat this exercise several times to get a sense of the sampling distribution of the sample mean for this example. 

#Make a plot in R graphing the following data
#2003 Life Expectancy in years per Capita in 10 Countries around the world 


#Time 1 

countries= c("Australia", "Austria", "Belgium", "Canada", "CzechRepublic", "Denmark", "Finland", "France", "Germany", "USA")
life_expectancy= c("Australia" = 80.3, "Austria" = 78.8, "Belgium" = 78.2, "Canada" = 79.9, "CzechRepublic" = 75.3, "Denmark" = 77.4, "Finland" = 78.5, "France" = 79.4, "Germany" = 78.6, "USA" = 77.5)


sampled_elements1 = sample(life_expectancy, size=5, replace=FALSE)
print(sampled_elements1) #each time you run the code, different estimates are given. 

mean(sampled_elements1)


#Time 2 

countries= c("Australia", "Austria", "Belgium", "Canada", "CzechRepublic", "Denmark", "Finland", "France", "Germany", "USA")
life_expectancy= c("Australia" = 80.3, "Austria" = 78.8, "Belgium" = 78.2, "Canada" = 79.9, "CzechRepublic" = 75.3, "Denmark" = 77.4, "Finland" = 78.5, "France" = 79.4, "Germany" = 78.6, "USA" = 77.5)


sampled_elements2 = sample(life_expectancy, size=5, replace=FALSE)
print(sampled_elements2) #each time you run the code, different estimates are given. 

mean(sampled_elements2)

#Time 3 

countries= c("Australia", "Austria", "Belgium", "Canada", "CzechRepublic", "Denmark", "Finland", "France", "Germany", "USA")
life_expectancy= c("Australia" = 80.3, "Austria" = 78.8, "Belgium" = 78.2, "Canada" = 79.9, "CzechRepublic" = 75.3, "Denmark" = 77.4, "Finland" = 78.5, "France" = 79.4, "Germany" = 78.6, "USA" = 77.5)


sampled_elements3 = sample(life_expectancy, size=5, replace=FALSE)
print(sampled_elements3) #each time you run the code, different estimates are given. 

mean(sampled_elements3)

B <- 5 # Number of samples
means <- sapply(1:B, function(b) {
  mean(sample(life_expectancy,size=5,replace=FALSE))
})

