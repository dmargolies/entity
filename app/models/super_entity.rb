class SuperEntity < ActiveRecord::Base
  attr_accessible :color, :element, :health_points, :hunger_points, :life_points, :name

  def self.update
    self.all.each do |entity|
      entity.update_lifepoints
      entity.save
    end
  end

  def update_lifepoints
    self.life_points +=10
  end
  def starving?
    self.hunger_points < 1
  end

  def alive?
    self.life_points > 0
  end

end
