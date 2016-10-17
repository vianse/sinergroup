class CreateCondicions < ActiveRecord::Migration
  def change
    create_table :condicions do |t|
      t.string :userID
      t.string :leido

      t.timestamps null: false
    end
  end
end
