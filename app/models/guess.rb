class Guess < ActiveRecord::Base
  belongs_to :round
  belongs_to :card

  def correct?(user_input, card)
    user_input == card.answer
  end
end
