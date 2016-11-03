class CreateHelpholders < ActiveRecord::Migration[5.0]
  def change
    create_table :helpholders do |t|
      t.string :name
      t.string :authoer

      t.timestamps
    end
  end
end
