class User < ActiveRecord::Base
  has_many :locations
  has_many :scores


  has_secure_password




  
end
