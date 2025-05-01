--
-- @lc app=leetcode id=1148 lang=mysql
--
-- [1148] Article Views I
--

-- @lc code=start
# Write your MySQL query statement below

select distinct author_id as id from Views
where author_id = Viewer_id  
ORDER by id ASC
-- @lc code=end

