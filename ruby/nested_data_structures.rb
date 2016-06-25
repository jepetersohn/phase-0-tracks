bedroom_furniture = {
 dresser: {
  top_drawer: "shirts",
  shirt_contents: {
   blue: 4,
   black: 2,
   green: 1,
  },
  shirt_styles: {
   long_sleeve: 3,
   short_sleeve: 3,
   sleeveless: 1,
  },
  shirt_logos: [
   "Kiss me, I'm Irish",
   "Just Do It",
   "Cool as Ice"
   ],
   
  bottom_drawer: "pants",
  pant_contents: {
   blue: 5,
   black: 1,
   neon_orange: 7,
  },
  pant_styles: {
   jeans: 7,
   capris: 3,
   sweats: 3,
  }
 },
 
 night_stand: {
  top_drawer: "miscellaneous",
  drawer_contents: [
   "ear plugs",
   "chapstick",
   "flash light",
   "pencil"
   ],
  bottom_drawer: "books",
  drawer_contents: {
   sudoku: 2,
   crossword_puzzle: 2,
   fiction: 1,
   nonfiction:1,
  }
 }
 
}


p bedroom_furniture [:dresser][:shirt_logos][2]
p bedroom_furniture [:dresser][:shirt_styles]
p bedroom_furniture [:night_stand] [:bottom_drawer].reverse
p bedroom_furniture [:dresser][:shirt_logos][0].upcase

