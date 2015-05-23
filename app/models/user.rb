class User < ActiveRecord::Base

  has_one  :profile
  has_many :messages

  has_secure_password
  acts_as_messageable

  def name
    return "You should add method :name in your Messageable model"
  end

  def mailboxer_email(object)
    #Check if an email should be sent for that object
    #if true
    # return "define_email@on_your.model"
    #if false
    return nil
  end

end
