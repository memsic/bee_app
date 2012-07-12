class AddPasswordDigestToBees < ActiveRecord::Migration
  def change
    add_column :bees, :password_digest, :string
  end
end
