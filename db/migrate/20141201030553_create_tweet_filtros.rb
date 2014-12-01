class CreateTweetFiltros < ActiveRecord::Migration
  def change
    create_table :tweet_filtros do |t|
      t.integer :filtro,:idFiltro
      t.integer :tweet,:idTweet

      t.timestamps
    end
  end
end
