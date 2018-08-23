class SomeClass

  def initialize(&block)
    @cb = block
  end

  def do_something
    puts "doing something..."
    @cb.call if @cb
  end
end

sc1 = SomeClass.new{puts "callback function"}
sc1.do_something

sc2 = SomeClass.new
sc2.do_something

