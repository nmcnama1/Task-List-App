class CreateHelps < ActiveRecord::Migration[5.0]
  def change
    create_table :helps do |t|
      t.string :name

      t.timestamps
    end
  end
end
