class CreatePubchats < ActiveRecord::Migration[5.0]
  def change
    create_table :pubchats do |t|
      t.string :name

      t.timestamps
    end
  end
end
