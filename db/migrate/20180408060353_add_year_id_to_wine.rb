class AddYearIdToWine < ActiveRecord::Migration[5.1]
  def change
    add_column :wines, :year_id, :integer
  end
end
