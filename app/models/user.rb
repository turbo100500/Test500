class User < ActiveRecord::Base
  include ActiveModel::SecurePassword
  attr_accessible :email, :name, :pass, :pass_con
  

  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence:   true,
                    format:     { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :pass, presence: true, length: { minimum: 6 }
  validates :pass_con, presence: true

end
