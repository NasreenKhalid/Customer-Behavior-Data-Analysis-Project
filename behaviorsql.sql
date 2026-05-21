select * from customer_behave
limit 20;

-- total rev by male vs female customers

select gender,sum(purchase_amount)
from customer_behave
group by gender

-- which customer used a discount but still spent more than avg purchase amt

SELECT *
FROM customer_behave
WHERE discount_applied = 'Yes'
AND purchase_amount > (
    SELECT AVG(purchase_amount)
    FROM customer_behave
);

-- top 5 products with higest average review rating
select item_purchased, Round(avg(review_rating),2) as rating
from customer_behave
group by item_purchased
order by rating desc
limit 5

-- compare the avg purchase amts b/w std and express shipping
select shipping_type, avg(purchase_amount)
from customer_behave
where shipping_type IN ('Express', 'Standard')
group by shipping_type

-- compare avg spend and total rev b/w subscribers and non-subscribers
select 
AVG (case WHEN subscription_status = 'Yes' THEN purchase_amount ELSE 0 END) as subs,
AVG( CASE WHEN subscription_status = 'No' THEN purchase_amount ELSE 0 END) as non_sub
from customer_behave

 SELECT subscription_status,
 count(customer_id) as total_Cust,
 AVG(purchase_amount) as av_pur,
 SUM(purchase_amount) as revenue
from customer_behave
group by subscription_status

-- which 5 products have the highest % of purchases with discounts app
select item_purchased, 
ROUND(SUM(CASE WHEN discount_applied = 'Yes' THEN 1 ELSE 0 END)/count(*) * 100 ,2) as dis_rate
from customer_behave
group by item_purchased
order by dis_rate DESC

-- SEGMENT cust into New, Returning, Loyal based on total no. of
-- prev purchases and show count 
with cust_type as (
select customer_id, previous_purchases,
CASE
	WHEN previous_purchases = 1 THEN 'New'
    WHEN previous_purchases BETWEEN 2 AND 10 THEN 'Returning'
    ELSE 'Loyal'
    END AS customer_segment
from customer_behave
)

select customer_segment, count(*) as 'No of customers'
from cust_type
group by customer_segment

-- what are top 3 most purchased products with each category
with item_counts as (
select category, item_purchased,
count(customer_id) as total_orders,
ROW_NUMBER() OVER(PARTITION BY category ORDER BY count(customer_id) desc) as item_rank
from customer_behave
group by category, item_purchased

)

select item_rank, category, item_purchased, total_orders
from item_counts
where item_rank <= 3

-- are repeat buyers also subscribers
select subscription_status,
count(customer_id) as repeat_buyers
from customer_behave
where previous_purchases > 5
group by subscription_status

-- rev by age proup
select age_group,
sum(purchase_amount) as total_rev
from customer_behave
group by age_group
order by total_rev desc


