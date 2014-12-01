class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :cuenta
      t.string :nombre
      t.integer :id_t
      t.integer :localizacion,:id_local

      t.timestamps
    end
  end
end
