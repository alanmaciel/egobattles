class Player
  def initialize(name, health)
    @name, @health = name.capitalize, health
  end
end

player1 = Player.new("moe", 100)
puts player1.inspect
