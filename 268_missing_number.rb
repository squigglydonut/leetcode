def missing_number(nums)
n = nums.length
answer = n * (n+1) / 2 - nums.inject(:+)
end

p missing_number([0, 1, 3]) #== 2
p missing_number([0]) #== 1
p missing_number([1]) #== 0
p missing_number([0,1]) #== 2
