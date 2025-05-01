--
-- @lc app=leetcode id=1581 lang=mysql
--
-- [1581] Customer Who Visited but Did Not Make Any Transactions
--

-- @lc code=start
# Write your MySQL query statement below


select customer_id, Count(Visits.visit_id) as count_no_trans
from Visits left join Transactions on
Visits.visit_id = Transactions.visit_id
-- where transaction_id is NULL
-- union
-- select customer_id, Count(transaction_id) as count_no_trans
-- from Visits right join Transactions on
-- Visits.visit_id = Transactions.visit_id
where transaction_id is NULL
group by customer_id






-- @lc code=end

