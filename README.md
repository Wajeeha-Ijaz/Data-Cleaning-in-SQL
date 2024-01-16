# Data Cleaning in SQL
This is a guided project from Coursera, in which I have learnt about cleaning data in SQL using following methods
For this project, open-source database (NorthWind Database) was used . 
### About NorthWind Dataset
The Northwind dataset includes sample data for the following.
- Suppliers: Suppliers and vendors of Northwind
- Customers: Customers who buy products from Northwind
- Employees: Employee details of Northwind traders
- Products: Product information
- Shippers: The details of the shippers who ship the products from the traders to the end-customers
- Orders and Order_Details: Sales Order transactions taking place between the customers & the company.
- **[Database](https://github.com/Wajeeha-Ijaz/Data-Cleaning-in-SQL/blob/main/instnwnd.sql)**
- **[Database ERD](https://docs.yugabyte.com/images/sample-data/northwind/northwind-er-diagram.png)** 
### About Project
1. **Removed duplicates, Using ROW_NUMBER and CTE**
2. **Created categories, Using CASE statements**
3. **Dealing with NULL values, using ISNULL()**
### ROW_NUMBER()
- ROW_NUMBER is a window function in SQL that assigns a unique sequential integer to each row within a partition of the result set.
- The numbering starts from 1 and increases incrementally based on the specified ordering of rows within the partition.
- It's commonly used for ranking and pagination purposes.
### CTE (Common Table Expression)
- A Common Table Expression (CTE) in SQL is a temporary result set defined.
- It allows you to create named temporary result sets that can be referred to within the execution of a larger query.
- CTEs improve readability and maintainability by breaking down complex queries into smaller, more manageable parts.
- CTEs are particularly useful for recursive queries and scenarios where a subquery needs to be referenced multiple times.
### CASE statement
- A CASE statement in SQL is a conditional expression that allows you to perform different actions based on different conditions.
- It is commonly used for data transformation, categorization, or generating calculated values within a query.
### ISNULL()
- The ISNULL function in SQL is used to replace NULL values with a specified replacement value.
- **It takes two arguments**:
  - First is the **expression** to be checked for NULL,
  - Second is the **value** to be returned if the expression is NULL.
  - **[Code for the guided project](https://github.com/Wajeeha-Ijaz/Data-Cleaning-in-SQL/blob/main/Guided%20Project.sql)**

# Capstone Project
This guided project also provided a capstones project that I did by myself. 
I had following tasks to do

1. Delete duplicate rows of QuantityPerUnit in the products table.
2. Create variable Restock now when UnitsOnOrder > 50 and UnitsInStock < 20.
3. Create variables, Restock now, Restock Next Week, Restock Next Month, Restock in 6 Months, Ask Manager
4. Deal with NULL Values in Column (Region & Fax).
5. **[Code for the task](https://github.com/Wajeeha-Ijaz/Data-Cleaning-in-SQL/blob/main/Task.sql)**
