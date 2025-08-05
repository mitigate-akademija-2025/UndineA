class AddColumnMiddleNameToUser < ActiveRecord::Migration[8.0]

  def up 
    #add_column :users, :middle_name, :string, null: false
    #add_column :users, :phone_number, :string
  end 
  def down
    remove_column :users, :middle_name
  end
end
