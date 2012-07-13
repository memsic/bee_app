class AddPasswordDigestToQueens < ActiveRecord::Migration
  def change
    add_column :queens, :password_digest, :string
  end
end
