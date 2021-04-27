

class Player

  attr_accessor :name
  attr_accessor :life_points

  def initialize(name)
    @name        = name
    @life_points = 10
  end

  def show_state
    puts "#{@name} a #{@life_points} points de vie"
  end

  def gets_damage(damage_received)
    @life_points = @life_points - damage_received
    if @life_points <= 0
      puts "Le joueur #{@name} a été tué"
    end
  end

  def attacks(player)
    puts "Le joueur #{@name} attaque le joueur #{player.name}"
    random_damage = compute_damage
    puts "Elle lui inflige #{random_damage} point de dommages."
    player.gets_damage(random_damage)
  end

  def compute_damage
    return rand(1..6)
  end
end




