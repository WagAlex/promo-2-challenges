class User < ActiveRecord::Base
  has_many :posts

  validates :email, presence: true, uniqueness: true
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i,
    message: "only allows valid email's address" }
  validates :name, presence: true

end