#############importing data into R ####################################################

#methoed 1: Select the file manually
stats<-read.csv(file.choose())
stats

#Methoed 2: set working directory and Read Data
getwd() #[1] "C:/Users/A691602/Documents"
setwd("c:\\Users\\A691602\\Desktop\\Python\\my example\\R programming practise")
getwd() # [1] "c:/Users/A691602/Desktop/Python/my example/R programming practise"
rm(stats) #removes the data
stats<-read.csv(("P2-Demographic-Data.csv"))
stats # File has been loaded

##############exploring Dataset########################################################
stats
# number of rows
nrow(stats) #Output [1] 195

#number of columns
ncol(stats) #output[1] 5

#Checking top 5 data sets
head(stats)
#############Country.Name Country.Code Birth.rate Internet.users        Income.Group
#1                Aruba          ABW     10.244           78.9         High income
#2          Afghanistan          AFG     35.253            5.9          Low income
#3               Angola          AGO     45.985           19.1 Upper middle income
#4              Albania          ALB     12.877           57.2 Upper middle income
#5 United Arab Emirates          ARE     11.044           88.0         High income
#6            Argentina          ARG     17.716           59.9         High income

#Checking Last 6 data sets/Row
tail(stats)
###########Country.Name Country.Code Birth.rate Internet.users        Income.Group
#190            Samoa          WSM     26.172           15.3 Lower middle income
#191      Yemen, Rep.          YEM     32.947           20.0 Lower middle income
#192     South Africa          ZAF     20.850           46.5 Upper middle income
#193 Congo, Dem. Rep.          COD     42.394            2.2          Low income
#194           Zambia          ZMB     40.471           15.4 Lower middle income
#195         Zimbabwe          ZWE     35.715           18.5          Low income

#Brief description data
str(stats)
#'data.frame':	195 obs. of  5 variables:
#$ Country.Name  : Factor w/ 195 levels "Afghanistan",..: 8 1 4 2 183 6 7 5 9 10 ...
#$ Country.Code  : Factor w/ 195 levels "ABW","AFG","AGO",..: 1 2 3 4 5 6 7 8 9 10 ...
#$ Birth.rate    : num  10.2 35.3 46 12.9 11 ...
#$ Internet.users: num  78.9 5.9 19.1 57.2 88 ...
#$ Income.Group  : Factor w/ 4 levels "High income",..: 1 2 4 4 1 1 3 1 1 1 ...

#Detailed analysis of Data
summary(stats)
#           Country.Name  Country.Code   Birth.rate    Internet.users               Income.Group
#Afghanistan        :  1   ABW    :  1   Min.   : 7.90   Min.   : 0.90   High income        :67   
#Albania            :  1   AFG    :  1   1st Qu.:12.12   1st Qu.:14.52   Low income         :30   
#Algeria            :  1   AGO    :  1   Median :19.68   Median :41.00   Lower middle income:50   
#Angola             :  1   ALB    :  1   Mean   :21.47   Mean   :42.08   Upper middle income:48   
#Antigua and Barbuda:  1   ARE    :  1   3rd Qu.:29.76   3rd Qu.:66.22                            
#Argentina          :  1   ARG    :  1   Max.   :49.66   Max.   :96.55                            
#(Other)            :189   (Other):189 

#############Using the $ sign ##########################################################################
#it works similar to mtrix
stats[3,]
#    Country.Name Country.Code  Birth.rate    Internet.users        Income.Group
#3       Angola          AGO     45.985           19.1         Upper middle income

stats[3,"Birth.rate"] # output [1] 45.985

#To fetch all the values of a particular column
stats$Internet.users

#To fetch the values of a particular column and the row number
stats$Internet.users[2] #output [1] 5.9

#to find unique values of a particular data set use funtion "levels" and "$" sign to extract the value 
levels(stats$Income.Group)
# Output [1] "High income"         "Low income"          "Lower middle income" "Upper middle income"


###################Basic Operations of Data Frame ############################################################
head(stats,10)  #subsetting
stats[1:10,] #subsetting
stats[c(4,100),] #getting 2 specified columns
#       Country.Name Country.Code Birth.rate   Internet.users        Income.Group
#4        Albania          ALB     12.877           57.2        Upper middle income
#100      Liberia          LBR     35.521            3.2          Low income
stats[,1] # it prints all the values of column 1 but it will not be a data frama any more

stats[,1,drop=F]# it will also givr all the values of acolumn but it will maintain it as a data frame only

#Multiply column
head(stats)
stats$Birth.rate*stats$Internet.users # two columns are multiplied 

#adding a column to a daa frame
stats$myCalc<-stats$Birth.rate*stats$Internet.users

#Deleting a column
stats$myCalc<-NULL
stats$xyz<-NULL
head(stats)

###############Filtering a Data Frame ################################################################################
head(stats)
stats$Internet.users # shows the stats of all internet users
stats$Internet.users < 2 # shows the value as "TRUE" where condition satisfies else "FALSE"

# To filter out the rows wher the Internet users are less than 2%
filter<-stats$Internet.users < 2
stats[filter,] #displays all the rows where internet user are less than 2%

#filter out data wher birth rate is more than 40% in one line
stats[stats$Birth.rate>40,]





