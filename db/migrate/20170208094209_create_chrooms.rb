class CreateChrooms < ActiveRecord::Migration[5.0]
  def change
    create_table :chrooms do |t|
      t.string :name

      t.timestamps
    end
  end
end
