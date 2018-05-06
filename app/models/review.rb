class Review < ApplicationRecord
  belongs_to :student, class_name: 'User'
  belongs_to :profile

  def self.reviewed_profile
    Review.group(:profile_id).map do |r|
        if !User.find_by(id: r.user_id).nil?
            Profile.find_by(id: r.profile_id)
        end
    end
end
end
