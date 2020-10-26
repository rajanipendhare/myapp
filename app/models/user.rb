class User < ApplicationRecord
	def self.authenticate(username,password)
		User.find_by(username: username, password: password)
	end
end