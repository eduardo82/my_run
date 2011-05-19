class ChangetypeAlltime < ActiveRecord::Migration
  def self.up
    change_table :runs do |t|
      t.change(:alltime, :integer)
    end
  end

  def self.down
  end
end
