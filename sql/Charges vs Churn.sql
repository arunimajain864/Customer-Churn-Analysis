select 
    Churn,
    ROUND(avg(MonthlyCharges), 2) as avg_monthly_charges,
    ROUND(avg(tenure), 1) as avg_tenure
from db.churn_data1
group by Churn;
