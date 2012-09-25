class Tag < ActiveRecord::Base
	has_many :taggings
	has_many :tags, :through => :tagggings

	def to_s
		name
	end
end
