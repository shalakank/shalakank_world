class Article < ActiveRecord::Base
	belongs_to :category

	validates_presence_of :title
	validates_presence_of :content

	scope :alphabetical, order('name')
	scope :active, where('active = ?', true)
end
