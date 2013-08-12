class Industry < ActiveRecord::Base
	#structure database
	#id:integer, name:string, description:text, header:string
	#
	#order ascending by id in table
	default_scope -> { order('id asc')}
	has_many :relation_industries
	has_many :products, through: :relation_industries
end