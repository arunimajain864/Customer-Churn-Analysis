#High Risk Customers
select 
    customerID,
    Contract,
    tenure,
    MonthlyCharges,
    PaymentMethod
from db.churn_data1
where tenure < 6
and MonthlyCharges > 70
and Contract = 'Month-to-month';
