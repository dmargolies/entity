class CreateSuperEntities < ActiveRecord::Migration
  def change
    create_table :super_entities do |t|
      t.string :name
      t.string :color
      t.string :element
      t.integer :life_points, :default => 10
      t.integer :health_points, :default => 100
      t.integer :hunger_points, :default => 5

      t.timestamps
    end
  end
end
