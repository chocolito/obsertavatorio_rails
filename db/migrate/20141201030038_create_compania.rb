class CreateCompania < ActiveRecord::Migration
  def change
    create_table :compania do |t|
      t.string :nombre
      t.integer :cuenta
      t.string :twit

      t.timestamps
    end
  end
end
