class Post < ActiveRecord::Base
  
  #check the presence of an image - cannot be null
  validates :image, presence: true
  has_attached_file :image, styles: {medium => "640px"}
    validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
end
