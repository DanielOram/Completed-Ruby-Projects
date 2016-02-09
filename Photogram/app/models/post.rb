class Post < ActiveRecord::Base
  #check the presence of an image - cannot be null
  validates :image, presence: true
  has_attached_file :image, styles: {medium => "640px"}
  #has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
end
