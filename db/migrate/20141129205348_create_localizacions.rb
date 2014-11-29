class CreateLocalizacions < ActiveRecord::Migration
  def change
    create_table :localizacions do |t|
      t.string :region

      t.timestamps
    end
  end
end
