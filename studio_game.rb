class Player
  attr_reader :health
  attr_accessor :name

  def initialize(name, health=100)
    @name, @health = name.capitalize, health
  end

  def to_s
    "I'm #{@name} with a health of #{@health} and a score of #{score}."
  end

  def blam
    @health -= 10
    puts "#{@name} got blammed!"
  end

  def w00t
    @health += 15
    puts "#{@name} got w00ted!"
  end

  def score
    @health + @name.length
  end

  def name=(new_name)
    @name = new_name.capitalize
  end
end

player1 = Player.new("moe")
player2 = Player.new("larry", 60)
player3 = Player.new("curly", 125)

players = [player1, player2, player3]

puts "There are #{players.size} in the game:"
players.each do |player|
  puts player
end

#puts player1
#puts player1.health
#
#puts player2.name
#player2.name = "lawrence"
#puts player2.name
#puts player2.health
#puts player2.score
#puts player2
#
#puts player3
#puts player3.health
#
#player3.blam
#puts player3
#player3.w00t
#puts player3


