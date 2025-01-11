#
# @lc app=leetcode id=3 lang=python3
#
# [3] Longest Substring Without Repeating Characters
#

# @lc code=start
class Solution:
    def lengthOfLongestSubstring(self, s: str) -> int:
        maxout = 0
        if s:
            out = 0
            maxout = 1
            curr = 0
            for i in range(len(s)):
                if s[i] not in s[curr:i]:
                    out += 1
                    if maxout <= out:
                        maxout = out

                else:
                    out = 1
                    curr = i
        return maxout

# @lc code=end
