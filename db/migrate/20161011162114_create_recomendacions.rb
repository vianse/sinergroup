class CreateRecomendacions < ActiveRecord::Migration
  def change
    create_table :recomendacions do |t|
      t.string :userID
      t.string :leido

      t.timestamps null: false
    end
  end
end
