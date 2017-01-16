def find_complement(num)
    num_as_binary = num.abs.to_s(2).chars
    flipped = num_as_binary.map! {|l| l == "1" ? l = "0" : l = "1"}
    flipped_binary = flipped.join.to_i 2
end

p find_complement(5)
