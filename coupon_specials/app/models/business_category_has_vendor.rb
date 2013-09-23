class BusinessCategoryHasVendor < ActiveRecord::Base
  belongs_to :vendor
  belongs_to :business_category
end
