class Player
  def initialize(name, health=100)
    @name, @health = name.capitalize, health
  end

  def say_hello
    "I'm #{@name} with a health of #{@health}."
  end

  def blam
    @health -= 10
    puts "#{@name} got blammed!"
  end
end

player1 = Player.new("moe")
player2 = Player.new("larry", 60)
player3 = Player.new("curly", 125)

puts player1.say_hello
puts player2.say_hello
puts player3.say_hello
