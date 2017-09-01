get '/decks' do
  @decks = Deck.all
  erb :'deck/show'
end

post '/decks' do
  @deck = Deck.find_by(id: params[:id])
  # @round = Round.new(deck_id: deck.id)
  redirect '/decks/:deck_id/cards/:card_id'
end

get '/decks/:deck_id/cards/:card_id' do
  @deck = Deck.find_by(id: params[:deck_id])
  @cards = @deck.cards
  @card = Card.find_by(id: params[:card_id])
  erb :'deck/game'
end

post '/decks/:deck_id/cards/:card_id' do
  @deck = Deck.find_by(id: params[:deck_id])
  @cards = @deck.cards
  @card = Card.find_by(id: params[:card_id])
  redirect "/decks/#{@deck.id}/cards/#{@deck.cards.sample.id}"
end
