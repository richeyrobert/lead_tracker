class User < ActiveRecord::Base
  belongs_to :user_type
  attr_accessible :email, :hashed_password, :name, :notes, :salt
end
