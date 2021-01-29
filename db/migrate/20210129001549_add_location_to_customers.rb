class AddLocationToCustomers < ActiveRecord::Migration[6.1]
  def change
    add_column :customers, :location, :string
  end
end
