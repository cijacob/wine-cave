class AddColorIdToWine < ActiveRecord::Migration[5.1]
  def change
    add_column :wines, :color_id, :integer
  end
end
