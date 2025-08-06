class QuizQuestion < ApplicationRecord
    belongs_to :quiz
    has_and_belongs_to_many :people

    after_save :add_first_person_full_name_to_content

    private
    def add_first_person_full_name_to_content
        return if people.empty?
        person = people.first
        return if content.include?(person.full_name)
        
        self.content = "{content} = #{first_person.full_name}"
        save
        end
    end
end