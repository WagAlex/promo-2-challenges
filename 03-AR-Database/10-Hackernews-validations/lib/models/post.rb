class Post < ActiveRecord::Base
  belongs_to :user

  validates :name, presence: true, uniqueness: true
  validates :date, presence: true,
  validates :source_url, presence: true
  validates :rating, presence true, numericality: { only_integer: true }
  validates :user, presence: true




