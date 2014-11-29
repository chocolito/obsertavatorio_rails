class CreateDiccionarios < ActiveRecord::Migration
  def change
    create_table :diccionarios do |t|
      t.string :terminos

      t.timestamps
    end
  end
end
