class CreatePeopleQuizQuestions < ActiveRecord::Migration[8.0]
  def change
    create_table :people_quiz_questions do |t|
      t.timestamps
    end
  end
end
