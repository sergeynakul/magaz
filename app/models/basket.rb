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

  def add_free_delivery
  	if sum > 500
  		delivery = 0
  	else
  		delivery = 50
  	end
  end

end
