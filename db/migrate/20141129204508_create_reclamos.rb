class CreateReclamos < ActiveRecord::Migration
  def change
    create_table :reclamos do |t|
      t.integer :idTweet
      t.integer :idCompania
      t.string :tipo
      t.string :servicio

      t.timestamps
    end
  end
end
