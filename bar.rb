require 'time' # you're gonna need it

class Bar
  attr_reader :name, :menu_items
  attr_accessor :happy_discount

  def initialize(name, menu_items = [], happy_discount = 0)
    @name = name
    @menu_items = menu_items
    @happy_discount = happy_discount
  end

  def add_menu_item(name, price)
    @menu_items << (MenuItem.new(name, price))
  end

  def happy_discount
    if self.happy_hour? == true
      @happy_discount
    else
      return 0
    end
  end

  def happy_discount=(value)
    if value < 0
      @happy_discount = 0
    elsif value > 1
      @happy_discount = 1
    else
      @happy_discount = value
    end
  end

  def happy_hour?
  end

end

class MenuItem
  attr_reader :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end
end

