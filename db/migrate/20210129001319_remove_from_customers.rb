class RemoveFromCustomers < ActiveRecord::Migration[6.1]
  def change
    remove_column :customers, :city, :string
    remove_column :customers, :state, :string
  end
end
