class CreateUsuarioTweets < ActiveRecord::Migration
  def change
    create_table :usuario_tweets do |t|
      t.integer :tweet,:idTweet
      t.integer :usuarios,:idUsuarios

      t.timestamps
    end
  end
end
