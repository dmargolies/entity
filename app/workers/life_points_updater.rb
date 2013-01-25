class LifePointsUpdater
  include Sidekiq::Worker

  def perform()
   binding.pry
    
  end
end
