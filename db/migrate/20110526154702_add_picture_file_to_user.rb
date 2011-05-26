class AddPictureFileToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :picture_file_name, :string
  end

  def self.down
    remove_column :users, :picture_file_name
  end
end
