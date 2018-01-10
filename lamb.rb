class Sheep
  
  @@count = 0 

  def initialize
  end

  def bleet
    puts has_money
  end
private
  def has_money
    true
  end

end 

sheep = Sheep.new
sheep.bleet
