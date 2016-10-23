class CreateMyimages < ActiveRecord::Migration
  def change
    create_table :myimages do |t|

      t.timestamps null: false
    end
  end
end
