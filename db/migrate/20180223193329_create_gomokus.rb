class CreateGomokus < ActiveRecord::Migration[5.1]
  def change
    create_table :gomokus do |t|
      t.text :data

      t.timestamps
    end
  end
end
