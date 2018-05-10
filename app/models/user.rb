class User < ApplicationRecord
  has_one :profile, dependent: :destroy
  has_many :reviews
  has_many :lessons, foreign_key: :tutor
  has_many :tutors, through: :lessons
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
end
