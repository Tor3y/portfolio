class User
  include Mongoid::Document
  field :email, type: String
  field :password, type: String
  field :password_digest, type: String
  field :is_active, type: Mongoid::Boolean, default: true 

  has_secure_password

end
