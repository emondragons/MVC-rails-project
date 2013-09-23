class Vendor < ActiveRecord::Base
	has_many :specials
	has_many :business_categorys, through: :business_category_has_vendors
end
