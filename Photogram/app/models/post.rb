class Post < ActiveRecord::Base
  validates :image, styles: { :medium => "640x" }
  has_attached_file :image
end
