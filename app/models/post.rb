class Post < ActiveRecord::Base
  attr_accessible :body, :title
  has_many :comments, dependent: :destroy
  has_many :taggings
  has_many :tags, :through => :taggings

  validates :title, presence: true, length: { minimum: 5 }
end
