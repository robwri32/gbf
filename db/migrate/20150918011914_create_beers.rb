class CreateBeers < ActiveRecord::Migration
  def change
    create_table :beers do |t|
      t.string :distributor
      t.string :brewery
      t.string :product
      t.integer :quantity
      t.boolean :draft
      t.boolean :tent
      t.text :equipment
      t.text :notes
      t.string :rep
      t.string :location

      t.timestamps null: false
    end
  end
end
