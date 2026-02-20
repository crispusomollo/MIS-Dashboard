# MIS Dashboard Project

![SQL Badge](https://img.shields.io/badge/SQL-Expert-blue)
![Power BI Badge](https://img.shields.io/badge/Power%20BI-Dashboard-yellow)
![MIS Badge](https://img.shields.io/badge/MIS-KPI-green)
![Data Analytics Badge](https://img.shields.io/badge/Data%20Analytics-Ready-orange)

## Project Overview
This repository demonstrates a complete **MIS reporting workflow**, using SQL and Power BI to generate actionable insights for management. The project simulates a company scenario with customers, orders, and employees.

It includes:

- SQL scripts to compute key KPIs:
  1. Average Salary per Department
  2. Total Orders and Total Amount per Customer
  3. Monthly Sales for 2025
  4. Top 3 Customers per Month
  5. Region × Month KPIs (Total Orders, Total Sales, Average Order Value)
- Power BI dashboard visualizing KPIs interactively
- Sample CSV data for quick local testing

---

## Folder Structure
```
SQL/ → SQL scripts for challenges
PowerBI/ → PBIX file + screenshots
Data/ → Sample CSV data
Docs/ → Optional project documentation
```

---

## Getting Started

### Prerequisites
- Power BI Desktop (for dashboards)
- SQL Server / MySQL / PostgreSQL (for running SQL scripts)
- Sample CSVs included for quick setup

### Running the Project
1. Load CSVs into SQL or use Power BI DirectQuery
2. Run SQL scripts (Challenges 1–5) to generate KPIs
3. Open `PowerBI/MIS_Dashboard.pbix`
4. Explore interactive visuals:
   - KPI Cards: Total Sales, Total Orders, Average Order Value
   - Monthly Sales Trend by Region
   - Top 3 Customers per Month
   - Region × Month KPI Matrix

---

## Sample Output Screenshots

![KPI Cards](PowerBI/screenshot_kpis.png)
![Monthly Sales Trend](PowerBI/screenshot_monthly_sales.png)
![Top Customers per Month](PowerBI/screenshot_top_customers.png)
![Region-Month KPI Matrix](PowerBI/screenshot_region_month.png)

---

## Future Enhancements
- Scheduled data refresh in Power BI Service
- Predictive analytics for sales forecasting
- Real-time dashboard updates via API integration

---

## Author

**Crispus Omollo** – Information Systems Specialist

Email: crispusomollo@gmail.com

LinkedIn: [linkedin.com/in/crispusomollo](https://linkedin.com/in/crispusomollo)


