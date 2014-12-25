class Player
  attr_reader :health
  attr_accessor :name

  def initialize(name, health=1000)
    @name = name.capitalize
    @health = health
  end

  def to_s
    "Player #{@name} created with a health of #{@health}."
  end

  def w00t
    @health += 500
    puts "Player #{@name} has been wooted!"
  end

  def blam
    @health -= 200
    puts "Player #{@name} has been blammed!"
  end
end

class Game
  
  def initialize(title)
    @title = title
    @players = []
  end

  def add_player(player)
    @players << player
  end

  def play
    puts "There are #{@players.size} players in #{@title}:"
    @players.each do |player|
      puts player
    end
    
    @players.each do |player|
      player.w00t
      player.blam
      player.blam
      puts player
    end
  end
end

player1 = Player.new("Alan")
player2 = Player.new("Obama", 2500)
player3 = Player.new("Vladimir", 3100)
player4 = Player.new("Kim", 1200)

thermonuclear = Game.new("Thermonuclear war")
thermonuclear.add_player(player1)
thermonuclear.add_player(player2)
thermonuclear.add_player(player3)
thermonuclear.add_player(player4)

thermonuclear.play
