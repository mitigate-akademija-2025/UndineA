class Quiz < ApplicationRecord
    include Statusable

    after_create :set_description
    validates :title, presence: true

    # private
    # def set_description
    #     self.description ||= "Default description for #{title}"
    #     #save if description_changed?
    # end
end