class RenameNameToEmail < ActiveRecord::Migration[7.2]
  def change
    rename_column :users, :name, :email
  end
end
