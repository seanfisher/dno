class Outing < ActiveRecord::Base
  belongs_to :user
  has_many :activity_assignments
  has_many :activities, :through => :activity_assignments
end
