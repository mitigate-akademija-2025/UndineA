class CreateAnswers < ActiveRecord::Migration[8.0]
  def change
    create_table :answers do |t|
      t.string :name
      t.belongs_to :question, null: false, foreign_key: true
      t.boolean :istrue
      t.timestamps
    end
  end
end
