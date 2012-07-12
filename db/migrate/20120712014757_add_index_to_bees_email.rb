class AddIndexToBeesEmail < ActiveRecord::Migration
  def change
    add_index :bees, :email, unique: true
  end
end
