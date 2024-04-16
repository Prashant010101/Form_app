class FormPage < ApplicationRecord
    validates :username, presence: true
    validates :email, presence: true
    validates :age, presence: true
end
