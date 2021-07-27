class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.boolean :status, default: false
      t.references :project, foreign_key: true
      t.datetime :deadline

      t.timestamps
    end
  end
end
