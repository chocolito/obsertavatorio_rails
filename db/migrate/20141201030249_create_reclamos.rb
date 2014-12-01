class CreateReclamos < ActiveRecord::Migration
  def change
    create_table :reclamos do |t|
      t.integer :tweet,:idTweet
      t.integer :compania,:idCompania
      t.string :tipo
      t.string :servicio

      t.timestamps
    end
  end
end
