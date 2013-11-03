class Post < ActiveRecord::Base
  attr_accessible :price, :title, :description
  has_many :comments
  validates :title, presence: true
end

