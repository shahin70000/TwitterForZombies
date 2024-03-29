class Role < ActiveRecord::Base
  attr_accessible :level, :name, :rank, :string
  has_many :assignments
  has_many :zombies, through: :assignments
end
