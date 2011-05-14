class CreateRuns < ActiveRecord::Migration
  def self.up
    create_table :runs do |t|
      t.integer :user_id
      t.float :distance
      t.date :day
      t.time :alltime

      t.timestamps
    end
  end

  def self.down
    drop_table :runs
  end
end
