class AddPointsUpdatedAtToSuperEntity < ActiveRecord::Migration
  def change
    add_column :super_entities, :points_updated_at, :datetime
  end
end
