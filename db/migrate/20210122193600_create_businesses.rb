class CreateBusinesses < ActiveRecord::Migration[6.1]
  def change
    create_table :businesses do |t|
      t.string :name
      t.integer :phone_number
      t.string :city
      t.string :state
      t.float :price_range
      t.float :rating
      t.belongs_to :customer, null: false, foreign_key: true
      t.belongs_to :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
