class Computer
    @@users = Hash.new(nil)
    attr_reader :username, :password
    
    def initialize(username, password)
        @username = username
        @password = password
        @@users[username] = password
        @files = Hash.new(nil)
    end
    
    def create(filename)
        time = Time.now
        @files[filename] = time
        puts "#{filename} created @ #{time} by #{@username}"
    end
    
    def Computer.get_users
        @@users
    end
    
end

my_computer = Computer.new("Bmo", "P@ssw3rd")

puts my_computer.username
puts my_computer.password