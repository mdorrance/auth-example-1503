class User < ActiveRecord::Base
  has_secure_password

  validates :username, presence: true,
                       uniqueness: true

  enum role: %w(default admin) #when you set column in db to 0 that is default
  #and then 1 will be admin
end
