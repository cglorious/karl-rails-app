class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.text :content
      t.integer :rating
      t.date :review_date
      t.belongs_to :customer, null: false, foreign_key: true
      t.belongs_to :business, null: false, foreign_key: true

      t.timestamps
    end
  end
end
