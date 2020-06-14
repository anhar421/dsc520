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
#         However, the average score for students in the regular section is higher.
#         This can be seen in the fact that 260 students scored 300 or higher in
#         the regular section, while only 220 students scored 320 or higher in
#         the sports section. (Scoring 300-400 points would be the upper quartile
#         of the data if we assume the range is 0-400 possible points). (Note that
#         there seemed to be duplicate rows in the data for the regular section
#         which could cause errors in analysis.)

# b. Did every student in one section score more points than every student in the
#    other section? If not, explain what a statistical tendency means in this context.
# Answer: Neither section had every student score more points then every student
#         in the other section. In this context, the statistical tendency would most
#         likely be the mode (the most frequent score in each section). For the
#         sports section, the mode was 285 and 335 (both had 30 students with
#         those scores). The regular section mode was 350 (30 students).

# c. What could be one additional variable that was not mentioned in the narrative
#    that could be influencing the point distributions between the two sections?
# Answer: Another variable that could be influencing the point distribution may be
#         a demographic difference between the two sections. It is stated that the
#         sports-themed section was advertised as such to the students prior to
#         registration. It is possible that the students who were more likely to
#         pick a sports-themed class would score differently on average than their
#         their counterparts, particularly when only given sports examples. It is
#         also possible that the students who specifically chose NOT to register
#         for a sports-themed class would be influenced differently by a more
#         diverse teaching method.