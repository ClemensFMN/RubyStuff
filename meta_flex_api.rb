class TestClass
# we have a wrapper class for a hash

  def initialize(c)
    @content = c
  end

  # instead of accessing the has "normally", we want to provide a set of get_XXX functions, which retieve key "XXX" from the hash
  # these get_XXX functions are not there but the has lookup is made using method_missing
  def method_missing(name, *args)
    puts "method #{name} not found; called with parameters #{args}"

    # retrieve the second part of the method name; forget about error handling
    s_name = name.to_s
    attr_part = s_name.split('_')[1]
    puts "second part = #{attr_part}"
    puts @content[attr_part.to_sym]
  end

end


tc1 = TestClass.new({:name=>"Clemens", :age=>10})
tc1.get_name
tc1.get_age

