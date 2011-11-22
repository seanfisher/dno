class CreateActivityAssignments < ActiveRecord::Migration
  def change
    create_table :activity_assignments do |t|
      t.integer :activity_id
      t.integer :outing_id
      
      t.timestamps
    end
  end
end
