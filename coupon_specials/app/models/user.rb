class User < ActiveRecord::Base
	has_many :locations
	has_many :scores
end