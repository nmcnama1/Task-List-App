class CreateHelpContainers < ActiveRecord::Migration[5.0]
  def change
    create_table :help_containers do |t|
      t.string :name
      t.string :authoer

      t.timestamps
    end
  end
end
