class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :romaji
      t.string :interest
      t.string :hobby
      t.string :skill
      t.string :interest

      t.timestamps
    end
  end
end
