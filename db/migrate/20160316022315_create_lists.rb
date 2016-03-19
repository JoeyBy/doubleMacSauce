class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :title
      t.date :due_date
      t.boolean :status

      t.timestamps null: false
    end
  end
end
