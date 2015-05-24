class User < ActiveRecord::Base

  has_one  :profile
  has_many :messages

  has_secure_password
  acts_as_messageable

  attr_accessible :image
  has_attached_file :image, :styles => { :medium => "400x400>", :small => "214x317>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  # def name
  #   return User.name
  # end

  def mailboxer_email(object)
    #Check if an email should be sent for that object
    #if true
    # return "define_email@on_your.model"
    #if false
    return nil
  end

end
