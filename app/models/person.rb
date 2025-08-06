class Person < ApplicationRecord
    has_many :quizzes, dependent: :distroy
    #has_many :quiz_questions through: :quizzes

    validates :first_name, presence: true
    #vaditates ::first_name, uniqueness: {scope: :last_name, message}
    validates :last_name, presence: true

    def full_name
        "#{first_name} #{last_name}"
    end
end