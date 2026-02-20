# MIS Dashboard Project - Project Plan

## Objective
Build a small end-to-end **Management Information System (MIS)** demo using SQL and Power BI to generate actionable insights for management.

## Scope
- Data: Customers, Orders, Employees
- KPIs: Average salary, total orders, total sales, top customers, regional and monthly metrics
- Tools: SQL (MySQL/PostgreSQL), Power BI Desktop

## SQL Challenges / KPIs
1. **Challenge 1:** Average Salary per Department (filter for departments > 2 employees)
2. **Challenge 2:** Total Orders & Total Amount per Customer (include customers with zero orders)
3. **Challenge 3:** Monthly Sales KPI (include months with zero sales)
4. **Challenge 4:** Top 3 Customers per Month (ranked using RANK() function)
5. **Challenge 5:** Region × Month KPIs (total orders, total sales, average order value)

## Power BI Dashboard
- KPI Cards: Total Sales, Total Orders, Average Order Value
- Trend Lines: Monthly Sales by Region
- Top-N Charts: Top 3 Customers per Month
- Region × Month Matrix: Aggregated KPIs per region and month
- Interactive Slicers: Filter by region and month

## Project Deliverables
- SQL scripts (Challenges 1–5)
- Sample CSV files
- Power BI `.pbix` dashboard
- Screenshots for README
- Project documentation (`Docs/Project_Plan.md`)

## Next Steps / Enhancements
- Scheduled data refresh in Power BI Service
- Predictive analytics for sales forecasting
- Real-time dashboard via API
- Additional KPIs: Customer retention, sales growth, regional performance

