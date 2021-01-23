class CreateBusinesses < ActiveRecord::Migration[6.1]
  def change
    create_table :businesses do |t|
      t.string :name
      t.string :city
      t.string :state
      t.integer :price_range
      t.belongs_to :category, null: false, foreign_key: true 

      t.timestamps
    end
  end
end
