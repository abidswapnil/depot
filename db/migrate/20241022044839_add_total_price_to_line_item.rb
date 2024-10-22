class AddTotalPriceToLineItem < ActiveRecord::Migration[7.2]
  def change
    add_column :line_items, :total_price, :integer
  end
end
