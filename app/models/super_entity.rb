class SuperEntity < ActiveRecord::Base
  attr_accessible :color, :element, :health_points, :hunger_points, :life_points, :name
  before_create :init_points_updated_at

  def self.update()
    updated_time = Time.now
    self.all.each do |entity|
      entity.with_lock do
        cycles = ((updated_time-entity.points_updated_at)/60).floor
        cycles.times do
          entity.update_lifepoints
        end
        entity.points_updated_at = updated_time
        entity.save
      end
    end
  end

  def init_points_updated_at
    self.points_updated_at = Time.now
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
