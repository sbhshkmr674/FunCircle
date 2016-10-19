class CreateDrops < ActiveRecord::Migration
  def change
    create_table :drops do |t|
      t.string :posts

      t.timestamps null: false
    end
  end
end
