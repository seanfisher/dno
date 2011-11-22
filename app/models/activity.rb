class Activity < ActiveRecord::Base
  belongs_to :user
  has_many :category_assignments
  has_many :categories, :through => :category_assignments
end
