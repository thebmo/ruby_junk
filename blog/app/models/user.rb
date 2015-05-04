class User < ActiveRecord::Base

	has_secure_password

	validates :username,
		presence: true,
		uniqueness: true,
		length: {
			minimum: 4,
			maximum: 50,
		}
	validates :password_digest,
		presence: true,
		length: {
			minimum: 6,
			maximum: 255,
		}
	validates :email,
		uniqueness: true,
		presence: true
end