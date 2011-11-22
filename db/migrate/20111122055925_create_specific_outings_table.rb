class CreateSpecificOutingsTable < ActiveRecord::Migration
  def change
    create_table :specific_outings do |t|
      t.integer :user_id
      t.integer :outing_id
      
      t.timestamps
    end
  end
end
