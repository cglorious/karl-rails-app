class AddNameToCustomersTable < ActiveRecord::Migration[6.1]
  def change
    add_column :customers, :name, :string
  end
end
