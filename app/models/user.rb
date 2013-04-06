class User < ActiveRecord::Base
  attr_accessible :name, :team_ids
  has_many :user_memberships
  has_many :teams, :through => :user_memberships
end
