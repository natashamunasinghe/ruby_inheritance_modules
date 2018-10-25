#module example. Modules can have multiple methods that you can call on a class
module Destructable
  def destroy (object)
    puts "I will destroy the object"
  end
end


class User
  include Destructable
  attr_accessor :name, :email

  def initialize (name, email)
    @name = name
    @email = email
  end

  def run
    puts "Hey I am running"
  end  

#class method example
  def self.identify_yourself
    puts "Hey I am a class method"
  end

end

class Buyer < User
  def run
    puts "I'm not running and I am in buyer class"
  end

end

class Seller < User

end

class Admin < User

end

# buyer1 = Buyer.new("John Doe", "John@example.com")
# buyer1.run
# seller1 = Seller.new("John Doe1", "John@example.com.au")
# seller1.run
# admin1 = Admin.new("John Doe2", "John@example.com2")
# admin1.run

# puts Buyer.ancestors

# puts "my name is #{buyer.destroy}"
# buyer.destroy("text")
# buyer.run_time
Buyer.identify_yourself
