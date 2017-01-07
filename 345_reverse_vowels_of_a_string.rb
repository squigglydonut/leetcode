require 'benchmark'
def reverse_vowel(string)
  vowels = %w(a e i o u)
  # consonants = %w(b c d f g h j k l m n p q r s t v w x y z)
  only_vowels_array_reversed = []
  string.each_char {|l| only_vowels_array_reversed << l if vowels.include?(l)}
  only_vowels_array_reversed = only_vowels_array_reversed.reverse

  idx = 0
  idx1 = 0

  while idx < string.length
    if vowels.include?(string[idx])
      string[idx] = only_vowels_array_reversed[idx1]
      idx += 1
      idx1 += 1
    else
      idx += 1
    end
  end

    string
end

print "The result is: #{reverse_vowel("leetcode")}\n"

Benchmark.bm(10) do |x|
  x.report('leetcode:') {reverse_vowel("leetcode")}
end
