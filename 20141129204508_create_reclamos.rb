class CreateReclamos < ActiveRecord::Migration
  def change
    create_table :reclamo do |t|
      t.integer :tweet,:id,:idTweet
      t.integer :compania, :id,:idCompania
      t.string :tipo
      t.string :servicio

      t.timestamps
    end
  end
end
