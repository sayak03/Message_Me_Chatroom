class User < ApplicationRecord
	validates :name, presence: true, length: { minimum: 3, maximum: 15 },
            uniqueness: { case_sensitive: false }
	has_many :contents
	has_secure_password
end
