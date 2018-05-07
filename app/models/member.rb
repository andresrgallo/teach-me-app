class Member < ApplicationRecord
    has_many :profiles
    before_save do |member|
        member.description = lesson.description.downcase.titleize
      end
end
