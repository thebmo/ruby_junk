class Monster
	attr_reader :name

	def initialize(name)
		@name = name
	end
end

class Dragon < Monster
	attr_reader :color

	def initialize(name)
		super
		@color = "None"
	end

	def breath
		"breaths non-colored flames!"
	end
end

class BlueDragon < Dragon
	def initialize(name)
		super
		@color ="blue"
	end

	def breath
		"breaths blue flames!"
	end
end


onixyia = Dragon.new("Onixyia")
puts "#{onixyia.name} is #{onixyia.color}"

azurgos = BlueDragon.new("Azurgos")
puts "#{azurgos.name} is #{azurgos.color}"

puts "#{onixyia.name} is still #{onixyia.color}"