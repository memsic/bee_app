class AddRememberTokenToQueens < ActiveRecord::Migration
  def change
    add_column :queens, :remember_token, :string
    add_index  :queens, :remember_token
  end
end
