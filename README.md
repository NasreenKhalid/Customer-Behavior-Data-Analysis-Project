# 🛒 Customer Behavior Data Analysis & Dashboard
## 📌 Project Overview
This project is an end-to-end data analysis of *e-commerce customer behavior*. The goal of this project is to analyze customer purchasing habits, demographics, and product preferences to extract actionable business insights. The project encompasses the entire data analysis lifecycle: data gathering, data cleaning, data transformation, exploratory data analysis (EDA), and interactive data visualization.
## 🎯 Problem Statement
In today's highly competitive e-commerce landscape, businesses generate massive amounts of customer data. However, without proper analysis, this data is just noise. 

The core problem this project addresses is: **How can we understand customer purchasing patterns to optimize inventory, tailor marketing strategies, and improve customer retention?**
Specifically, the business needs to understand:
- Which demographic groups drive the most revenue and sales volume?
- Which product categories are the most popular and profitable?
- How does subscription status impact overall purchasing behavior?
- What is the overall customer satisfaction level?
## 📊 The Dataset
The dataset (customer_behave.csv) contains 3,900 records of customer transactions, detailing demographic information, product attributes, and behavioral metrics.
### Key Features include:
- Demographics: customer_id, age, age_group, gender, location
- Product Details: item_purchased, category, size, color
- Purchase Metrics: purchase_amount, season, review_rating
- Customer Loyalty & Behavior: subscription_status, shipping_type, discount_applied, promo_code_used, previous_purchases, payment_method, frequency_of_purchases
### ❓ Key Analytical Questions Answered
The dashboard and analysis were designed to answer the following critical business questions:
- High-Level Metrics: What is the total customer base, the average purchase amount, and the average customer review rating?
- Customer Loyalty: What proportion of the customer base are active subscribers versus non-subscribers?
- Category Performance: Which product categories generate the highest total revenue, and which generate the highest volume of sales?
- Demographic Analysis: How do revenue and sales volume distribute across different age groups (Young Adult, Middle-Aged, Adult, Senior)?
- Segmentation: How do purchasing behaviors change when filtered by Gender, Subscription Status, or specific Item Categories?
## 🛠️ Project Methodology
- Data Collection: Imported the raw dataset containing customer transaction records.
- Data Cleaning: Addressed missing values (e.g., filling blank purchase frequency days), corrected data types, and ensured data consistency.
- Data Transformation: Grouped ages into standardized age_group categories, categorized items into broader category groups, and created calculated columns for revenue tracking.
- Data Analysis: Performed exploratory data analysis to find trends, correlations, and outliers.
- Data Visualization: Built an interactive dashboard to present key performance indicators (KPIs) and trends dynamically.
## 📈 Dashboard Highlights & Insights
Based on the visual analysis in the provided dashboard:
- Total Customer Base: 3,900 (3.9K) customers.
- Customer Satisfaction: The average review rating is 3.75 / 5.0, indicating generally positive reception, but leaving room for product/service improvement.
- Spending Habits: The average purchase amount per transaction is $59.76.
- Subscription Gap: A massive 73% of customers do not have a subscription, highlighting a major opportunity for marketing campaigns to convert one-time buyers into loyal subscribers (27%).
- Top Categories: Clothing is by far the leading category in both total sales volume and overall revenue generated, followed by Accessories and Footwear. Outerwear performs the lowest.
- Demographics: Young Adults are the most lucrative demographic, driving the highest revenue and sales counts, closely followed by Middle-Aged customers.
## 💻 Tech Stack Used
- Data Cleaning & Transformation: [Python (Pandas), SQL, and MS Excel/Power Query]
- Data Visualization & Dashboarding: [Power BI]
- Version Control: Git & GitHub
### 📂 Repository Structure
1. Contains the raw and cleaned CSV files (customer_behave.csv).
2. Contains the dashboard file (.pbix) and a screenshot of the dashboard.
3. Contains Python/SQL scripts used for data cleaning and transformation.
4. README.md: Project documentation.
### 🚀 How to Use
- Clone the repository
- Open the data file to view the raw data.
- Open the dashboard file using Power BI Desktop to interact with the visualizations.
