#
# @lc app=leetcode id=121 lang=python3
#
# [121] Best Time to Buy and Sell Stock
#

# @lc code=start
class Solution:
    def maxProfit(self, prices: List[int]) -> int:
        profit = 0
        buy = prices[0]
        for p in prices:
            if p<buy:
                buy = p
            profit = max(profit, p-buy)
            
        return profit
# @lc code=end
