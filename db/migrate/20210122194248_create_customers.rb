class CreateCustomers < ActiveRecord::Migration[6.1]
  def change
    create_table :customers do |t|
      t.string :email
      t.string :password_digest
      t.string :city
      t.string :state

      t.timestamps
    end
  end
end
