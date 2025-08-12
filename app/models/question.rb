class Question < ApplicationRecord
  belongs_to :quiz
  validates :name, presence: true

  has_many :answers, dependent: :destroy
  accepts_nested_attributes_for :answers, allow_destroy: true
end
