class AddFieldstoUser < ActiveRecord::Migration
  def self.up
    add_column :runs, :average, :float
    add_column :runs, :calories, :float
  end

  def self.down
    remove_column :runs, :average, :float
    remove_column :runs, :calories, :float
  end
end
