class ChangetypeAlltime < ActiveRecord::Migration
  def self.up     
       change_column :runs, :alltime, :integer
   end

  def self.down
    change_column :runs, :alltime, :float
  end
end
