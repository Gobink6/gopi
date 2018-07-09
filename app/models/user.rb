class User < ApplicationRecord
# include Mongoid::Document
 #sacts_as_token_authenticatable
#has_secure_password
 # encrypt_columns :password

 # validates :username,
         #   presence: true,
     #       	uniqueness: true
#
# devise :invitable, :database_authenticatable,
       #  :recoverable, :rememberable, :trackable, :validatable,
       #  :lockable
       #field :authentication_token
end
