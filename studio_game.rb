class Player
  def initialize(name, health)
    @name, @health = name, health
  end
end

player1 = Player.new("moe", 100)
puts player1
