class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :nombre
      t.string :cuenta
      t.integer :idLocal

      t.timestamps
    end
  end
end
