# Power BI Dashboard Integration

## Step 1 — Connect Power BI to SQL / CSV

- Open Power BI Desktop
- Click Get Data → SQL Server (if using a database) or Get Data → Text/CSV (if using CSVs in Data/)
- Load your tables:
  - employees (Challenge 1)
  - customers (Challenges 2–5)
  - orders (Challenges 2–5)


## Step 2 — Data Preparation (Power Query)

- Ensure data types are correct:

  - Dates → Date
  - Amounts → Decimal Number
  - IDs → Whole Number

- Add calculated columns if needed:
```
Avg_Order_Value = DIVIDE([total_sales], [total_orders], 0)
```


## Step 3 — Build Dashboard Visuals

**1. KPI Cards**

- Total Sales
- Total Orders
- Average Order Value

**2. Monthly Trend Line Chart**
```
X-axis → month_name

Y-axis → total_sales

Legend → region
```

**3 Top Customers Table / Bar Chart**

Use Challenge 4 output (ranked top 3 customers per month)
```
Columns → month_name, name, total_sales, rank

Add slicers → month_name, region
```

**4. Region-Month Matrix**
```
Rows → region

Columns → month_name

Values → total_orders, total_sales, avg_order_value
```

## Step 4 — Dashboard Styling

- Use consistent colors for regions

- Conditional formatting: highlight top 1 customer per month

- Sort months by month_num (not alphabetically)

- Include title, labels, and tooltips for clarity

## Step 5 — Save & Export

- Save ``.pbix`` in PowerBI/ folder

- Take screenshots of each key visual for README

- Optional: export dashboard as PDF for quick portfolio showcase
