# Assignment 1.1: Test Scores
# Name: Harvey, Anna
# Date: 2020 - 06 - 07

# 1. What are the observational units in this study?
# 1. The observational units are course grades and total points earned.

# 2. Identify the variables mentioned in the narrative paragraph and 
#    determine which are categorical and quantitative?
# 2. The variables are the students in the course and the content taught. The
#    students are categorical variables and the grades are quantitative variables.

getwd()
dir()
setwd("/users/Anna/Documents/GitHub/dsc520")
scores_df <- read.csv("data/scores.csv")

# 3. Create one variable to hold a subset of your data set that contains 
#    only the Regular Section and one variable for the Sports Section.
regular_sec <- scores_df[scores_df$Section == "Regular", ]
regular_sec
sports_sec <- scores_df[scores_df$Section == "Sports", ]
sports_sec

# 4. Use the Plot function to plot each Sections scores and the number of 
# students achieving that score. Use additional Plot Arguments to label the graph
# and give each axis an appropriate label.
plot(Score~Count, data = regular_sec, col = "blue", main = "Regular Section Scores", 
     xlab = "Number of Students")
plot(Score~Count, data = sports_sec, col = "red", main = "Sports Section Scores", 
     xlab = "Number of Students")

#  Once you have produced your Plots answer the following questions:
# a. Comparing and contrasting the point distributions between the two section, 
#    looking at both tendency and consistency: Can you say that one section 
#    tended to score more points than the other? Justify and explain your answer.
# Answer: The sports section had slightly more variety in scores than the regular
#         section (sports had 19 different scores and regular had 17 different
#         scores). It also had a wider range of scores (sports range = 200 - 395;
#         regular range = 265 - 380).
#         Overall, the average score for students in the regular section is higher.
#         This can be seen in the fact that 210 students scored 300 or higher in
#         the regular section, while only 170 students scored 320 or higher in
#         the sports section.