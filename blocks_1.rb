# managing a ressource via blocks
class Ressource
  def Ressource.open_and_process(name)
    puts "opening " + name # simulate ressource allocation
    yield(name)
    puts "closing ressource " + name # simulate closing
  end
end

Ressource.open_and_process("micki maus") do |res|
  puts "using ressource " + res
end
                                                 
