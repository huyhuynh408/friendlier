class Profile < ActiveRecord::Base

  belongs_to :user

  # attr_accessible :image
  has_attached_file :image, :styles => { :medium => "400x400>", :small => "214x317#" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

end
