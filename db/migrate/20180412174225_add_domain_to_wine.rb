class AddDomainToWine < ActiveRecord::Migration[5.1]
  def change
    add_reference :wines, :domain, foreign_key: true
  end
end
