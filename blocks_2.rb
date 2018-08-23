def func1(&blk)
  blk.call()
end

func1 {puts "hello"}

# we have class which takes a block as argument in the constructor
class Wrapper
  def initialize(&blk)
    puts "init"
    @block = blk
  end
  # and in the execute block, the block is then called
  def execute
    @block.call()
    puts "exec"
  end
end

wp1 = Wrapper.new {puts "hello from wrapper"}
wp1.execute()


# a more functional way - a function returns a lambda (in Ruby that's a Proc object)
def func2(s)
  return lambda {puts s}
end

# the lambda can be assigned to a variable
lbd1 = func2("susi")
puts lbd1.class
# ... and called (via a method from Proc)
lbd1.call()


# the lambda closes over any parameters in the outer scope
def func3(n)
  return lambda {
    tmp = 10*n
    return tmp
  }
end

lbd2 = func3(2)
res = lbd2.call()
puts res

# the lambda itself can also take parameters
def func4(n)
  return lambda do |x|
    tmp = x*n
    return tmp
  end
end

lbd2 = func4(2)
res = lbd2.call(3)
puts res
