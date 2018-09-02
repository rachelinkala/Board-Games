class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :title
      t.integer :rating
      t.string :publisher
      t.integer :maximum_players
      t.boolean :solo_option

      t.timestamps
    end
  end
end
