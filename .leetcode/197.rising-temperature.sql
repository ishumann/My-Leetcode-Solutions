--
-- @lc app=leetcode id=197 lang=mysql
--
-- [197] Rising Temperature
--

-- @lc code=start
# Write your MySQL query statement below



select w1.id from Weather w1 JOIN Weather w2
ON DATE_SUB(w1.recordDate, INTERVAL 1 DAY) = w2.recordDate
where w1.temperature > w2.temperature  

-- @lc code=end

