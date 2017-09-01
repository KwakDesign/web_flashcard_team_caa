class Round < ActiveRecord::Base
  has_many :guesses
  belongs_to :deck
  belongs_to :user

  def run

  end
end
