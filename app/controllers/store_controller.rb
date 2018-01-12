class StoreController < ApplicationController
  def index
  	@items = Item.order(:title)
  end
end
