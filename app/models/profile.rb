class Profile < ApplicationRecord
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
  belongs_to :member
  belongs_to :user
  validates :first_name, presence: true, length: { minimum: 5 }
  validates :last_name, presence: true, length: { minimum: 5 }
  validates :address, presence: true
  validates :state, presence: true
  validates :suburb, presence: true
  validates :postcode, presence: true, numericality: true
  validates :member, presence: true
end
