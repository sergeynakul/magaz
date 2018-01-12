class Item < ActiveRecord::Base
	has_many :basket_items
	validates :title, :price, presence: true
	validates :price, numericality: {greater_than_or_equal_to: 0.01}
	validates :title, uniqueness: true
end
