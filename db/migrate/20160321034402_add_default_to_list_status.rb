class AddDefaultToListStatus < ActiveRecord::Migration
  def change
    change_column_default(:lists, :status, true)
  end
end
