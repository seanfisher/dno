class ActivityAssignment < ActiveRecord::Base
  belongs_to :outing
  belongs_to :activity
end
