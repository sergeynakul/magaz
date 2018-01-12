class CreateBasketItems < ActiveRecord::Migration
  def change
    create_table :basket_items do |t|
      t.references :item, index: true
      t.belongs_to :basket, index: true

      t.timestamps
    end
  end
end
