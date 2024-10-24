class AddPayTypeToOrder < ActiveRecord::Migration[7.2]
  def change
    add_column :orders, :pay_type, :integer
  end
end
