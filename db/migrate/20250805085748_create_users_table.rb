class CreateUsersTable < ActiveRecord::Migration[8.0]
  def change
    create_table :users do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :email 
      t.string :password

      #t.datetime :signed_up_at
      t.timestamps
    end
  end
end
