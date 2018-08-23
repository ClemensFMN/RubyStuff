class Fib
  # classical Fibonacci class with maximum value
  include Enumerable # getting additional functionality in....
  def initialize(n)
    @n = n
  end

  def each # generate sequence of Fibs up to n
    an = 1
    anm1 = 1
    while an < @n
      yield an
      temp = anm1
      anm1 = an
      an = an + temp
    end
  end

  def each_with_index # Fibs + index; that's the naive approach - the more clever solution is next
    an = 1
    anm1 = 1
    i = 1
    while an < @n
      yield i, an
      i += 1
      temp = anm1
      anm1 = an
      an = an + temp
    end
  end

  def each_with_index_v2
    i = 1
    self.each do |f|
      yield i, f
      i+=1
    end
  end

  def each_pair
    self.each_cons(2) {|f| yield f[0], f[1]} # each_cons comes in by Enumerable
  end

end


f1 = Fib.new(100)

f1.each {|f| puts f}

f1.each_with_index {|i,f| puts "#{i}, #{f}"}
f1.each_with_index_v2{|i,f| puts "#{i}, #{f}"}

f1.each_pair{|f1,f2| puts "#{f1}, #{f2}"}

# we can also obtain a dedicated iterator - deprecated?
enum = Enumerator.new(f1, :each_pair)
puts(enum.count)


# this functionality is provided by including the Enumerable module
puts f1.include?(13)
puts f1.include?(14)




