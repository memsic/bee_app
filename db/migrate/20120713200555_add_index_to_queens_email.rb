class AddIndexToQueensEmail < ActiveRecord::Migration
  def change
    add_index :queens, :email, unique: true
  end
end
