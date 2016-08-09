class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.integer :percent
      t.datetime :due_date

      t.timestamps
    end
  end
end
