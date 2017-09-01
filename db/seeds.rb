card1 = Card.create( {
  question: "What is a nighthawk's primary food source?",
  answer: "insects"
})

card2 = Card.create( {
  question: "True or false?  Nighthawks are closely related to hawks.",
  answer: "false"
})

card3 = Card.create({
  question: "True or false?  Nighthawks make nests.",
  answer: "false"
})

card4 = Card.create( {
  question: "Where do Common Nighthawks spend the winter?",
  answer: "South America"
})

card5 = Card.create( {
  question: "True or false?  Bullbat is another name for the Common Nighthawk.",
  answer: "true"
})

deck = Deck.create( {
  name: "Nighthawks"
})


deck.cards << card1
deck.cards << card2
deck.cards << card3
deck.cards << card4
deck.cards << card5
