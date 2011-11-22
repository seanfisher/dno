class CreateAttributes < ActiveRecord::Migration
  def change
    create_table :attributes do |t|
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
