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
    happy_hour_start = Time.parse('3pm')
    happy_hour_end = Time.parse('4pm')

    happy_hour = Time.now
    if happy_hour > happy_hour_start && happy_hour < happy_hour_end
      @happy_discount = 0.5
      return true
    else
      @happy_discount = 0
      return false
    end
  end

  def get_price(menu_item)
    if happy_hour?
      return menu_item.price * happy_discount
    else
      return menuitem.price
    end
  end

end

class MenuItem
  attr_reader :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end
end

