class Player
  def initialize(name, health=100)
    @name, @health = name.capitalize, health
  end

  def say_hello
    "I'm #{@name} with a health of #{@health}."
  end
end

player1 = Player.new("moe")
puts player1.inspect
puts player1.say_hello
