class User < ActiveRecord::Base

  has_one  :profile
  has_many :messages

  has_secure_password
  acts_as_messageable

end
