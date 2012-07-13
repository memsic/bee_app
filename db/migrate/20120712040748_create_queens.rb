class CreateQueens < ActiveRecord::Migration
  def change
    create_table :queens do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
