class Post < ActiveRecord::Base
  attr_accessible :price, :title, :description
  validates :title, presence: true
end

