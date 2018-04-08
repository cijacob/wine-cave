class AddDomainIdToWine < ActiveRecord::Migration[5.1]
  def change
    add_column :wines, :domain_id, :integer
  end
end
