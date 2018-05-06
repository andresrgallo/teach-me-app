class Lesson < ApplicationRecord
  belongs_to :tutor, class_name: 'User'
  belongs_to :category

  def price_hr_cents
    (price_hr * 100).to_i
  end
end
