require 'date'

class SomeApp

  def do_something # the actual method doing something useful
    @x = 0 # this variable is captured with the block
    with_logging('method do_something') {puts "executing do_something"}
  end


  def with_logging(description) # this function combines the logging and executes the block in between
    log("starting with #{description}")
    log("x is taken with the block: #{@x}") # and the variable can be used here
    yield
    log("done with #{description}")
  end

  def log(s) # the logging method
    puts "Logging from application @ #{DateTime.now}: #{s}"
  end

end



sa = SomeApp.new
sa.log "dkdjf"

sa.do_something


