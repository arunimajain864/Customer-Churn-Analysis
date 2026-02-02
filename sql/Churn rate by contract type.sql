#Churn Rate by Contract Type
select 
    Contract,
    COUNT(*) as total_customers,
    SUM(case when Churn = 'Yes' then 1 else 0 end) as churned_customers,
    ROUND(
        SUM(case when Churn = 'Yes' then 1 else 0 end) * 100.0 / COUNT(*),
        2
    ) as churn_rate_percent
from db.churn_data1
group by Contract
order by churn_rate_percent desc;


