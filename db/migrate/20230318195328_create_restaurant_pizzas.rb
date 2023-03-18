class CreateRestaurantPizzas < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurant_pizzas do |t|
      t.decimal :price, precision: 5, scale: 2
      t.references :restaurant, null: false, foreign_key: true
      t.references :pizza, null: false, foreign_key: true

      t.timestamps
    end
  end
end