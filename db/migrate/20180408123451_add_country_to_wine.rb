class AddCountryToWine < ActiveRecord::Migration[5.1]
  def change
    add_column :wines, :country_id, :integer
  end
end
