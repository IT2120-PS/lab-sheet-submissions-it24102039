# 0️⃣ Set working directory
setwd ("C:/Users/USER/Desktop/Lab 10")

# 1️⃣ Load dataset
data <- read.csv("Data.csv")
View(data)
str(data)

# ============================================================
# QUESTION 1
# A shop owner claims that equal number of customers come each weekday
# Monday: 55, Tuesday: 62, Wednesday: 43, Thursday: 46, Friday: 50
# ============================================================

# Observed frequencies
customers <- c(55, 62, 43, 46, 50)
days <- c("Mon", "Tue", "Wed", "Thu", "Fri")

# Chi-square Goodness of Fit test
# H0: Customers come equally on all weekdays
# H1: Customers do NOT come equally on all weekdays
result1 <- chisq.test(customers, p = rep(1/5, 5))

# Show results
print(result1)

# Check expected frequencies
result1$expected

# ------------------------------------------------------------
# Conclusion:
# If p-value < 0.05 → Reject H0 → customers not equally distributed
# If p-value >= 0.05 → Fail to reject H0 → equally distributed
# ------------------------------------------------------------


# ============================================================
# QUESTION 2
# Association between house tasks and distribution in couple
# ============================================================

# Import the contingency table (from data.csv or online)
# If your Data.csv is a contingency table (13 rows × 4 columns):
# Columns: Wife, Alternately, Husband, Jointly
tasks <- read.csv("C:/Users/USER/Desktop/Lab 10/Data.csv", row.names = 1)

# View data
View(tasks)

# Perform Chi-square test of independence
# H0: No association between task type and distribution
# H1: There is an association
result2 <- chisq.test(tasks)

# Display results
print(result2)

# Expected frequencies
result2$expected

# ------------------------------------------------------------
# Conclusion:
# If p-value < 0.05 → Reject H0 → Association exists
# If p-value >= 0.05 → Fail to reject H0 → No association
# ------------------------------------------------------------


# ============================================================
# QUESTION 3
# Vending machine snack preference (A, B, C, D)
# ============================================================

# Example: assume these are recorded purchases
snack_counts <- c(45, 39, 33, 43)   # Replace with your actual data if in CSV
snack_types <- c("A", "B", "C", "D")

# Chi-square Goodness of Fit test
# H0: Customers choose snacks equally (p=0.25 each)
# H1: Customers prefer some snacks more than others
result3 <- chisq.test(snack_counts, p = rep(1/4, 4))

# Display results
print(result3)
result3$expected

# ------------------------------------------------------------
# Conclusion:
# If p-value < 0.05 → Reject H0 → Customers have different preferences
# If p-value >= 0.05 → Fail to reject H0 → All snacks equally likely
# ------------------------------------------------------------


# ============================================================
# OPTIONAL: Save output to file
sink("ChiSquare_Lab10_Output.txt")
cat("=== Question 1: Shop Owner Test ===\n")
print(result1)
cat("\n=== Question 2: House Tasks Test ===\n")
print(result2)
cat("\n=== Question 3: Vending Machine Test ===\n")
print(result3)
sink()
# ============================================================