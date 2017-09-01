get '/decks' do
  @decks = Deck.all
  erb :'deck/show'
end

post '/decks' do
  @deck = Deck.find_by(id: params[:id])
  @round = Round.new(deck_id: deck.id)
  redirect '/decks/:id'
end

get '/decks/:id' do
  @deck = Deck.find_by(id: params[:id])
  @cards = @deck.cards
  erb :'deck/game'
end

# post '/decks/:id' do
#   puts params
#   @guess = Guess.new()
#   @guess.correct = params[:guess][:user_guess].correct?()
# end
