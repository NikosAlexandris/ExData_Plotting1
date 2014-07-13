# Overall goal:
  # examine household energy usage variation over a 2-day period in February, 2007


# Tasks:
  # reconstruct plots provided at <https://class.coursera.org/exdata-004/human_grading/view/courses/972141/assessments/3/submissions>,
  # using the base plotting system.


# ToDo

  # Fork & clone the GitHub repository: https://github.com/rdpeng/ExData_Plotting1

  # For each plot:

    #1 Construct plot & save as PNG file (480 x 480 pixels)
    
    #2 Name plot files as plot1.png, plot2.png, etc.
    
    #3 Create R code files for each plot (plot1.R, plot2.R, etc.)
    
      #a code should include reading data so that the plot can be fully reproduced.
      #b should also include the code that creates the PNG file.

    #4 Add PNG file and R code to your git repository

  # When finished, push git repository to GitHub.
    # There should be four PNG files and four R code files.



# Load data of interest, e.g. Dates 2007-02-01 and 2007-02-02

  # Details
    # variable separator is ";"
    # missing values are coded as ?

# # Load some sample prepared with head & tail in the shell
# hpc <- read.csv(
# 		file="/home/nik/archive/coursera/Exploratory_Data_Analysis/data/household_power_consumption_head.txt",
# 		header = TRUE,
# 		sep=";",
# 		stringsAsFactors = FALSE
# 		)


# Convert Date & Time strings to R's Date/Time class(es) -- Example code

  # Date
  format ( strptime ( hpc[,1], "%d/%m/%Y" ) , usetz = FALSE )

  # Time
  format (strptime ( hpc[,2], "%H:%M:%S"), usetz=FALSE )

# Import Dates of interest
hpc <- read.csv.sql(
    file="household_power_consumption.txt",
    header = TRUE,
    sep=";",
    stringsAsFactors = FALSE,
    sql="SELECT * FROM file WHERE Date='1/2/2007' OR Date='2/2/2007'")