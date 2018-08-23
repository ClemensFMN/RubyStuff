class Personv1
  attr_reader :name
  attr_accessor :age
  def initialize(name, age)
    @name = name
    @age = age
  end
  def to_s
    "#@name, #@age"
  end
  def age_in_days=(n)
    @age = n / 365
  end
  def age_in_days
    @age * 365
  end
end

mc1 = Personv1.new("Clemens", 34)
puts mc1 # the nice printout requires the to_s method to be overwritten
puts mc1.name # this requires the attr_reader
puts mc1.age
mc1.age = 12 # this requires the attr_accessor
puts mc1

puts mc1.age_in_days
mc1.age_in_days = 2*365
puts mc1

mc1 + 4
puts(mc1)
