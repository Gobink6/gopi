class ApplicationRecord < ActiveRecord::Base
	#acts_as_token_authenticatable
	# attr_encrypted_options.merge!(:encode => true)
   # attr_encrypted :username, :key => ENV["USERKEY"]
   # attr_encrypted :password, :key => ENV["PASSWORDKEY"]
  self.abstract_class = true
end
