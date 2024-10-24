class RemovePayTypeFromOrder < ActiveRecord::Migration[7.2]
  def change
    remove_column :orders, :pay_type, :integer
  end
end
