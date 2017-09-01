class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.references :deck
      t.string :question, null: false
      t.string :answer, null: false

      t.timestamp
    end
  end
end
