class AddAgeToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :age, :integer
    add_column :users, :peso, :float
    add_column :users, :altura, :integer
    add_column :users, :sexo, :string  
  end

  def self.down
    remove_column :users, :age, :integer
    remove_column :users, :peso, :float
    remove_column :users, :altura, :integer
    remove_column :users, :sexo, :string
  end
end
