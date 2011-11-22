class CategoryAssignment < ActiveRecord::Base
  belongs_to :category
  belongs_to :activity
end
