class User < ApplicationRecord
	validates :name, presence: true, length: { minimum: 3, maximum: 15 }
	  has_secure_password
end
