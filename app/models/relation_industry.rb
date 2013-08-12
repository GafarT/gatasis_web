class RelationIndustry < ActiveRecord::Base
	belongs_to :industry
	belongs_to :product
end
