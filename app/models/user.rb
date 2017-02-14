# require 'bcrypt'

class User < ActiveRecord::Base
  has_many :posts
  has_many :comments
  validates :name, :presence => true
  validates :email, :presence => true
  validates :password, :presence => true

  # include BCrypt
  #
  # def password
  #   @password ||= Password.new(password)
  # end
  #
  # def password=(new_password)
  #   @password = Password.create(new_password)
  #   self.password = @password
  # end

end
