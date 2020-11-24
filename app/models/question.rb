class Question < ApplicationRecord
    has_many :answers
    
    validates :content, :name, presence: true
end
