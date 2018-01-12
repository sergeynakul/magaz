class Basket < ActiveRecord::Base
  has_many :basket_items, dependent: :destroy

  def add_item(item)
    basket_items.build(item: item)
  end

  def sum
		total = 0
		basket_items.each {|li| total += li.item.price }
		total
  end

end
