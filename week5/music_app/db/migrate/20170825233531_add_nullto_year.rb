class AddNulltoYear < ActiveRecord::Migration[5.1]
  def change
    change_column_null :albums, :year, false
  end
end
