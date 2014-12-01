class CreateTwwetDiccionarios < ActiveRecord::Migration
  def change
    create_table :twwet_diccionario do |t|
      t.integer :diccionario, :idDiccionario
      t.integer :tweet, :idTweet

      t.timestamps
    end
  end
end
