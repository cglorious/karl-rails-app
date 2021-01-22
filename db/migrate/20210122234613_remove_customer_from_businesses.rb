class RemoveCustomerFromBusinesses < ActiveRecord::Migration[6.1]
  def change
    remove_reference :businesses, :customer, null: false, foreign_key: true
  end
end
