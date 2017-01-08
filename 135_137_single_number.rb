def single_number(nums)
  counts = Hash.new(0)

  nums.each {|el| counts[el] += 1}
  result = counts.select {|el, count| count == 1}.keys

  result[0]
end

p single_number([1, 1, 2, 3, 3, 4, 4]) #== [2]
