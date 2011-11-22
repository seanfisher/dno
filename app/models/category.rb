class Category < ActiveRecord::Base
  has_many :attribute_assignments
  has_many :activities, :through => :attribute_assignments
end
