class Lesson < ApplicationRecord
  belongs_to :tutor, class_name: 'User'
  belongs_to :category
end
