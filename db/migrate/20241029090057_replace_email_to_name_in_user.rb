class ReplaceEmailToNameInUser < ActiveRecord::Migration[7.2]
  def change
    rename_column :users, :email, :name
  end
end
