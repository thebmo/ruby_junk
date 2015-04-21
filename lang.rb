module Languages
  def FAVE 
  	puts "Ruby"  # This is what you typed before, right? :D
  end
end

class Master
  include Languages

  def initialize; end
end

class Slave
	extend Languages
	def intitialize; end
end


total = Master.new
total.FAVE
Slave.FAVE