class SuperEntity < ActiveRecord::Base
  attr_accessible :color, :element, :health_points, :hunger_points, :life_points, :name

  def starving?
    self.hunger_points < 1
  end

  def alive?
    self.life_points > 0
  end

end
