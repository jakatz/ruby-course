require 'time' # you're gonna need it

class Bar
  attr_reader :name, :menu

  def initialize(name, menu = [])
    @name = name
    @menu = menu
  end


end
