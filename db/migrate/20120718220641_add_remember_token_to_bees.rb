class AddRememberTokenToBees < ActiveRecord::Migration
  def change
    add_column :bees, :remember_token, :string
    add_index  :bees, :remember_token
  end
end
