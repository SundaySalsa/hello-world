#Dice simulation class

class Die

  def initialize
    roll
  end

  def roll
    @number_showing = 1 + rand(6)
  end
  
  def showing
    @number_showing
  end

  def cheat x
    if (1..6).include? x
      @number_showing = x
    else
    end
  end
end

a = Die.new
puts a.showing
a.cheat 6
puts a.showing


dice = [Die.new, Die.new]

dice.each do |die|
  puts die.roll
end
