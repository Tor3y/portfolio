class User
  include Mongoid::Document
  include ActiveModel::SecurePassword
  field :email, type: String
  field :password, type: String
  field :password_digest, type: String
  field :is_active, type: Mongoid::Boolean, default: true 
end
