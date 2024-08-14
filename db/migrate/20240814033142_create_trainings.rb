class CreateTrainings < ActiveRecord::Migration[7.2]
  def change
    create_table :trainings do |t|
      t.string :menu
      t.integer :weight
      t.integer :body

      t.timestamps
    end
  end
end
