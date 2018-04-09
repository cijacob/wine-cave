class CreateJoinTableCepageWine < ActiveRecord::Migration[5.1]
  def change
    create_join_table :cepages, :wines do |t|
       t.index [:cepage_id, :wine_id]
       t.index [:wine_id, :cepage_id]
    end
  end
end
