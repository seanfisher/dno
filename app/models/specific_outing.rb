class SpecificOuting < ActiveRecord::Base
  belongs_to :outing
  belongs_to :user
end
