class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :title
      t.decimal :duration
      t.decimal :price
      t.string :description
      t.string :location
      t.integer :user_id

      t.timestamps
    end
  end
end
