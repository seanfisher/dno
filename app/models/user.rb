class User < ActiveRecord::Base
  authenticates_with_sorcery!
  
  attr_accessible :username, :email, :password, :password_confirmation
  
  validates_length_of :password, :minimum => 5, :message => "must be at least 5 characters long", :if => :password
  validates_confirmation_of :password, :message => "should match confirmation", :if => :password
  validates_presence_of :username, :on => :create
  validates_length_of :username, :minimum => 3, :message => "must be at least 3 characters long"
  validates_uniqueness_of :username
  validates_presence_of :password, :on => :create
  validates_presence_of :email
  validates_uniqueness_of :email
end
