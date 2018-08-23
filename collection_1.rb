v1 = (1..10) # [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
pp(v1)

v2 = v1.map { |i| i*i }
pp(v2)

v3 = v1.group_by { |i| i % 3 == 0 }
pp(v3)

ind1 = v1.find_index { |i| i == 3 }
pp(ind1)

puts "************"

sum1 = v1.inject(0) do |acc, i|
  pp acc, i
  acc = acc + i
end
pp(sum1)

s1 = ["hello",  "world",  "my" , "name", "is", "clemens", "world"]
pp(s1)


word_count = Hash.new(0)
s1.inject(word_count) do |acc, w|
 acc[w] += 1
 acc # this is required - the block must return the updated hashtable!
end

pp(word_count)


