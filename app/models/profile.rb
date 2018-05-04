class Profile < ApplicationRecord
  belongs_to :user
  validates :first_name, presence: true, length: { minimum: 5 }
  validates :last_name, presence: true, length: { minimum: 5 }
  validates :address, presence: true
  validates :state, presence: true
  validates :suburb, presence: true
  validates :postcode, presence: true, numericality: true
end
