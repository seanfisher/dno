class CreateOutings < ActiveRecord::Migration
  def change
    create_table :outings do |t|
      t.string :title
      t.string :description
      t.integer :rating
      t.integer :user_id

      t.timestamps
    end
  end
end
