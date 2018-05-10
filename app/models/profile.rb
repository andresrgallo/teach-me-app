class Profile < ApplicationRecord
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
  belongs_to :member
  belongs_to :user
  has_many :reviews, dependent: :destroy
  validates :first_name, presence: true, length: { minimum: 3 }
  validates :last_name, presence: true, length: { minimum: 3 }
  validates :address, presence: true
  validates :state, presence: true
  validates :suburb, presence: true
  validates :postcode, presence: true, numericality: true
  validates :member, presence: true
  before_save do |profile|
    profile.first_name = profile.first_name.downcase.titleize
    profile.last_name = profile.last_name.downcase.titleize
    profile.address = profile.address.downcase.titleize
    profile.state = profile.state.downcase.upcase
    profile.suburb = profile.suburb.downcase.titleize
    profile.qualifications = profile.qualifications.downcase.titleize
    profile.work_experience = profile.work_experience.downcase.capitalize
  end
end
