class Monster
	attr_reader :name

	def initialize(name)
		@name = name
	end
end


class Dragon < Monster
	attr_reader :color

	def initialize(name, color = "non -")
		super(name)
		@color = color
	end

	def breath
		"#{@name} breathes #{@color} colored flames!"
	end
end


class BlueDragon < Dragon
	attr_reader :armor

	def initialize(name)
		super(name, "blue")
		@armor = 5
	end
end
