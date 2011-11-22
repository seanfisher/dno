class Outing < ActiveRecord::Base
  has_many :specific_outings
  has_many :users, :through => :specific_outings
end
