class Review < ApplicationRecord
  belongs_to :student, class_name: 'User'
  belongs_to :profile
end
