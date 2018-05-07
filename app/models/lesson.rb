class Lesson < ApplicationRecord
  belongs_to :tutor, class_name: 'User'
  belongs_to :category
  before_save do |lesson|
    lesson.description = lesson.description.downcase.titleize
    lesson.details = lesson.details.downcase.capitalize
  end

  def price_hr_cents
    (price_hr * 100).to_i
  end
end
