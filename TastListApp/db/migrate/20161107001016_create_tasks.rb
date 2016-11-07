class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.integer :priority
      t.date :due_date
      t.boolean :is_completed_toggle
      t.belongs_to :task_list, foreign_key: true

      t.timestamps
    end
  end
end
