class Player
  def initialize(name, health=100)
    @name, @health = name.capitalize, health
  end
end

player1 = Player.new("moe")
puts player1.inspect
