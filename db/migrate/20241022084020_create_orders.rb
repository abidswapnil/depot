class CreateOrders < ActiveRecord::Migration[7.2]
  def change
    create_table :orders do |t|
      t.string :name
      t.text :address
      t.string :email
      t.decimal :pay_type
      t.timestamps
    end
  end
end
