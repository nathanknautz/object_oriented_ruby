require "./buying.rb"
require "./store_item.rb"

module StoreFront

class Food < Item
  include Buying
  attr_reader :shelf_life
  def initialize(input_options)
    super 
    @shelf_life = input_options[:shelf_life]
  end 

end 

end