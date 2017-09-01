class CreateGuesses < ActiveRecord::Migration
  def change
    create_table :guesses do |t|
      t.references :card
      t.references :round
      t.boolean :correct
      t.string :user_guess

      t.timestamp
    end
  end
end
