class Post < ActiveRecord::Base
  attr_accessible :body, :title
  has_many :comments, dependent: :destroy
  has_many :taggings
  has_many :tags, :through => :taggings

  validates :title, presence: true, length: { minimum: 5 }

  attr_accessor :tag_names
  after_save :assign_tags

  private

  def assign_tags
  	if @tag_names
  		@tag_names.scan(/#\s*(\w+)/) do |tag_name|
  			self.tags << Tag.find_or_create_by_name(tag_name.pop)
	  	end
  	end
  end
end
