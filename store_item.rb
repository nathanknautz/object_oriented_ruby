require "./buying.rb"

module StoreFront

class Item 
  include Buying
  attr_reader :type, :price, :weight 
  attr_writer :type, :price, :weight
  
  def initialize(input_options)
    @type = input_options[:type]
    @price = input_options[:price]
    @weight = input_options[:weight]
  end 

  def cost
    puts "Tax is 10%"
    puts "Your item costs: " + (@price * 1.1).to_s
  end

  def healthy

    if @type == "candy"
      puts "Your item is not healthy"
    else
      puts "Your item is healthy!"
    end

  end

end 

end
