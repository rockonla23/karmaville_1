class AddIndicesToUsers < ActiveRecord::Migration
  def up
    add_column :users, :total_karma, :integer, :default => 0
    add_column :users, :full_name, :string
    add_index :users, :total_karma
    add_index :users, :full_name
  end

  def down
    remove_index :users, :total_karma
    remove_index :users, :full_name
    remove_column :users, :total_karma
    remove_column :users, :full_name
  end
end