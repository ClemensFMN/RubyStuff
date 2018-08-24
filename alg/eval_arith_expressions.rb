class Calc

  def initialize
    @vs = [] # value stack
    @os = [] # operation stack
  end

  def evaluate(lst)
    lst.each do |elem|
      puts elem

      if(elem == "+" || elem == "-" || elem == "*" || elem == "/")
          @os.push elem
      elsif(/\d/ =~ elem)
          @vs.push elem
      elsif(elem==")")
          op = @os.pop
          if(op == "+")
            val1 = @vs.shift.to_f
            val2 = @vs.shift.to_f
            @vs.push val1 + val2
          end
          if(op == "-")
            val1 = @vs.shift.to_f
            val2 = @vs.shift.to_f
            @vs.push val1 - val2
          end
          if(op == "*")
            val1 = @vs.shift.to_f
            val2 = @vs.shift.to_f
            @vs.push val1 * val2
          end
          if(op == "/")
            val1 = @vs.shift.to_f
            val2 = @vs.shift.to_f
            @vs.push val1 / val2
          end
      end
   
    
      puts "operator stack: #{@os}, value stack: #{@vs}"
    end
      @vs.pop
  end
end



c = Calc.new
res = c.evaluate(['(', '10', '-', '2', ')'])
puts res




