# Create a vector

# https://www.datamentor.io/r-programming/vector

x <- 1:10
# In Bash: git remote add origin git@github.com:nehleen/Course_2_RProgramming.git
# The error observed was due to entering the command on console instead of bash

# Some terms: Operation, Objects, Expression [anything written on R console] 
# 

# Objects:
# Anything in R is object but based on what type of informations are stored it might be grouped into 5 atomic classes

# Why this Classifcation is important? because we can't perform all type of operation into a given object.

# 1. Character
# 2. Numeric
# 3. Integer
# 4. Complex
# 5. Logical

# Creating Vectors:

# Remember vectors are the most basic objects in R-with two attributes.
# The attributes that vectors do have are - length [gives information about how many elements are there] and class [gives information about what type of elements are stored]

# You can even add the attributes

x.1 <- c(0.5, 0.6)
x.2 <- c(TRUE, FALSE)
x.3 <- c(T,F)
x.4 <- c("a","b","c")
x.5 <- 9:29
x.6 <- c(1+0i, 2+4i)
x.7 <- vector("numeric", length = 10)
length(x.7)
class(x.7)

# What happens when we use different types of objects to create a vector?
# It will either misinterpret all the elements either as charecter or numeric vector.
# When different types of object is mixed in a vector, coercion occurs so that every element in the vector is of the same class

y.1 <- c(1.7, "a")
y.2 <- c(TRUE, 2)
y.3 <- c("a", TRUE)

class(y.1) # character
class(y.2) # numeric
class(y.3) # character

# note: "" is used to distinguish the numeric from character elements
# So where there is "" assigning any one of the elements as character all other element turns out to be character objects in a vector
# We can easily convert a numeric vector into character vector using ** as. function but we can't convert a character vector into numeric

# Data Type; list
## Lets create a list

xx <- list(1, "a", TRUE, 1+4i)
xx

# Elements of a list have double brackets around them


# Data Type; Matrices

# matrices is special type of vector with dim/dimension attributes

# what matrices function does?

# take an assigned list of numbers, break into groups equal to number of rows and sort/ order it column wise

x.mat.1 <- matrix(nrow=3, ncol=3)
x.mat.1
attributes(x.mat.1)
dim(x.mat.1)

x.mat.2 <- matrix(1:9, nrow = 3, ncol = 3)
x.mat.2
dim(x.mat.2)
attributes(x.mat.2)

x.mat.3 <- matrix(1:6, nrow = 3, ncol = 2)

# creating a matrix using the dim command

# create a vector of numbers

m <- 1:10

# pass the vector through the dimension function

dim(m) <- c(2,5) # dim(m) <-c(row,column)

# Another ways of creating matrix is: binding column or rows together

# Create vectors of equal lengths 
# They could be vectors of columns 
# They could be vectors of rows

xm <- 1:6
ym <- 1:6

cbind(xm,ym) # considers the vectors as individual columns and sort them accordingly
rbind(xm,ym) # considers the vectors as individual rows and sort them accordingly

# Data type: factors: special type of vectors



# Data type: Missing value => Na [anything else, missing value], NaN [undefined mathematical operation]

is.na()
is.nan()

# Data types: Data frames

# dataframe = tabulater data
# dataframe is a special type of list
# unlike matrics/list, dataframe can store use variable length of data in each column

# dataframe can be created using read.csv or ead.table function
# df has special attributes called row.names
# can be converted into matrix by calling data.matrix()

# How create a dataframe?

# read.table
# read.csv
# data.frame (col1=value, col2=value)

df<- data.frame(foo=1:4, bar=c(T,F,T,F))
df
nrow(df)
ncol(df)

## anything [object] in R can have names attributes
## all data types in R by default has - class() and length() attributes. in addition we can also assign names attribute
## only matrix, array and dataframes has dimension attribute
## How to read a data table in R?

# read.table() => reading data table of any types of field separator
# read.csv() => reading data tables with csv file separator
# read.delim() => reading tab separeted files

## writing a filtered data in R:
# write.table()

# Setting a working directory:





summery(mtcars[mtcars$gear == 4, ])

mtcars %>% group_by(gear) %>% summarise(mean_of_mpg=mean(mph))


