class Project < ActiveRecord::Base
  attr_accessible :description, :name, :team_id
  has_many :items
  belongs_to :team
end
