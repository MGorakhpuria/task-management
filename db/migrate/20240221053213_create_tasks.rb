class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.references :user, index: true, foreign_key: true
      t.string :title
      t.string :description
      t.integer :status, default: 0
      t.datetime :due_date
      t.timestamps
    end
  end
end
