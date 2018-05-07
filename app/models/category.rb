class Category < ApplicationRecord
    has_many :lessons
    # validates :description, :presence => true
    before_save do |category|
        category.description = category.description.downcase.titleize
      end
    has_attached_file :image, styles: {
        thumb: '100x100>',
        square: '200x200#',
        medium: '300x300>'
      }
    
      # Validate the attached image is image/jpg, image/png, etc
      validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
    
      
      
end
