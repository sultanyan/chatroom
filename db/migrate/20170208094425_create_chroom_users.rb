class CreateChroomUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :chroom_users do |t|
      t.references :chroom, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
