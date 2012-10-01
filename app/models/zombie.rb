class Zombie < ActiveRecord::Base
  attr_accessible :age, :bio, :name

  before_save :make_rotting
  scope :rotting, where(rotting: true)
  scope :fresh, where("age < 20")
  scope :recent, order("created_at desc").limit(3)

  def make_rotting
      self.rotting = true if age > 20
    end
  end

end
