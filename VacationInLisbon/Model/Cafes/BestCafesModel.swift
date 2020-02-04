//
//  BestCafesModel.swift
//  FeelTheLisbon
//
//  Created by Vladyslav PALAMARCHUK on 1/20/20.
//  Copyright © 2020 Vladyslav PALAMARCHUK. All rights reserved.
//

import Foundation

let bestCafesJSON =
"""
[
{
"title": "Pastelaria Versailles",
"additional": "Pastelaria, Pastry Shop, Portuguese, $$$",
"greyPrice": "$$",
"about": "On the bustling Avenida da República, north of the centre, lies one of Lisbon’s loveliest and most traditional cafés, Pastelaria Versailles. Order your coffee from the long glass cabinet lined with sumptuous cakes and pastries, and then take a seat beneath the chandeliers where a waistcoated waiter will serve it to you.",
"location": "15-A Avenida da República, Lisboa, Lisboa, 1050-185, Portugal",
"latLong": "38.7346738,-9.1451388",
"phone": "+351213546340",
"link_url": "https://www.facebook.com/pastelariaversailles/"
},
{
"title": "Linha d’Água",
"additional": "Cafe, Coffee, $$$",
"greyPrice": "$$",
"about": "Though a short walk from the Gulbenkian Museum, Linha d’Água lies in the upper reaches of Parque Eduardo VII and does not see many tourists. Order a coffee with an inexpensive meal from the broad glass-fronted building, and sit in a shady spot next to the shallow waters of a little lake.",
"location": "Rua Marquês de Fronteira, Lisboa, Lisboa, 1070-099, Portugal",
"latLong": "38.728283,-9.1602377",
"phone": "+351213814327",
"link_url": "http://www.linhadeagua.pt/"
},
{
"title": "Buzz Lisboeta",
"additional": "Cafe, Coffee",
"about": "Innovation is a buzzword in Lisbon these days, and you’ll find plenty of it in Village Underground, a hotchpotch of striking old shipping containers and double-decker buses repurposed as workspaces and studios. One of the buses now doubles as a café, Buzz Lisboeta, where creative types get their caffeine fix and snacks throughout the day. Join them for a feel of the city’s creative pulse.",
"location": "Lisboa, Lisboa, 1300-299, Portugal",
"latLong": "38.702659606933594,-9.175220489501953",
"phone": "+351911115533",
"link_url": "https://www.facebook.com/pg/buzzlisboeta/"
},
{
"title": "Café A Brasileira",
"additional": "Cafe, Portuguese, $$$",
"greyPrice": "$$",
"about": "Lisbon’s most famous café brims with tourists at certain times of the day, with many sitting outside next to the bronze statue of writer Fernando Pessoa (who used to imbibe absinthe with his coffee here for literary inspiration). To appreciate Café A Brasileira fully, visit first thing in the morning or in the evening, and admire the beautiful interior of marble and carved wood.",
"location": "122 Rua Garrett, Lisboa, Lisboa, 1200-273, Portugal",
"latLong": "40.741895,-73.989308",
"phone": "+351213469541",
"link_url": "https://www.abrasileira.pt/"
},
{
"title": "Confeitaria Nacional",
"additional": "Cafe, Coffee, $$$",
"greyPrice": "$$",
"about": "Another of Lisbon’s classic cafés, this cosy space with stucco ceilings serves a range of cakes and traditional pastries to go with your coffee. First opened in 1829, Confeitaria Nacional was frequented by the Portuguese royal family before the creation of the republic. There are a few seats outside or in a cute room upstairs.",
"location": "18B Praça Dom Pedro IV, Lisboa, Lisboa, 1100-241, Portugal",
"latLong": "38.7137787,-9.1395267",
"phone": "+351213424470",
"link_url": "https://confeitarianacional.com/"
},
{
"title": "Quiosque das Amoreiras",
"additional": "Cafe, Coffee",
"about": "Many of Lisbon’s squares and open spaces have little kiosks serving cold drinks and snacks – and even in these, you’ll get yourself a decent brew. Quiosque das Amoreiras, on a square partly framed by the Águas Livres Aqueduct, is one of the most tranquil, with handy outdoor seating.",
"location": "14 Praça das Amoreiras, Lisboa, Lisboa, 1250-096, Portugal",
"latLong": "38.7217792,-9.1555688",
"phone": "+351213872272",
"link_url": "https://www.facebook.com/QuiosqueAmoreiras/"
},
{
"title": "Ler Devagar",
"additional": "Cafe, Coffee Shop, Coffee",
"about": "So keen are Lisboetas on their coffee that you’ll often find café sections in museums, hairdressers and even shops. Ler Devagar is a striking bookshop whose shelves are wedged behind the metalwork of a former printing press, but it also serves as a gallery, music shop, bar and café. It’s part of the LX Factory complex, a series of studios, restaurants and bars set up on the site of an abandoned factory.",
"location": "0.3, 103 - G Rua Rodrigues de Faria, Lisboa, Lisboa, 1300-501, Portugal",
"latLong": "38.7167,-9.1333",
"phone": "+351213259992",
"link_url": "http://www.lerdevagar.com/"
},
{
"title": "Martinho da Arcada",
"additional": "Cafe, Coffee, $$$",
"greyPrice": "$$",
"about": "Coffee always tastes better with a bit of history attached to it, and there are few older places in Lisbon than this café-restaurant. Since Martinho da Arcada opened its doors in 1782, it has served as a gambling den, a hang-out for political dissidents and another favourite drinking hole of writer Fernando Pessoa. The seats under the arcades make it the ideal spot to watch trams trundling into Lisbon’s main riverside square.",
"location": "3 Praça do Comércio, Lisboa, Lisboa, 1100-148, Portugal",
"latLong": "38.708194732666016,-9.135833740234375",
"phone": "+351218879259",
"link_url": "http://www.martinhodaarcada.pt/"
},
{
"title": "Le Chat",
"additional": "Cafe, Restaurant, Portuguese, $$$",
"greyPrice": "$$",
"about": "Le Chat is a hip, glass-fronted café, restaurant and bar next to the Museu Nacional de Arte Antiga. It boasts superb views across the River Tagus and docks from within or outside on its outdoor terrace.",
"location": "Jardim 9 de Abril Lisboa, Lisboa, 1200-736, Portugal",
"latLong": "38.7167,-9.1333",
"phone": "+351213963668",
"link_url": "http://www.lechatlisboa.com/"
},
{
"title": "Casa Pereira da Conceição",
"additional": "Cafe, Coffee, $$$",
"greyPrice": "$",
"about": "Having sampled Lisbon’s rich brews, you might well decide to take some ground coffee home with you. Right in the heart of the Baixa district, you’ll probably smell Casa Pereira da Conceição before you enter it, and the delicious aromas are matched by the delights of its interior, which has changed little since it opened in 1933. Along with chunky machines for grinding coffee beans, there are rows of glass cabinets stocked with coffees, teas, porcelain and Asian-style fans.",
"location": "102 Rua Augusta, Lisboa, Lisboa, 1100-053, Portugal",
"latLong": "38.7101621,-9.1374031",
"phone": "+351213423000"
},
{
"title": "Pastéis de Belém",
"additional": "Cafe, Coffee, Pastries, $$$",
"greyPrice": "$$",
"about": "Hardly unknown to tourists, Belém’s most famous café is nevertheless unmissable if you want to sample some of the best pastéis de nata (custard tarts) the city has to offer. Made on site at this cavernous and highly picturesque tiled building, the tarts are best enjoyed sprinkled with cinnamon and accompanied by a strong bica coffee.",
"location": "92, 84 Rua de Belém, Lisboa, Lisboa, 1300-085, Portugal",
"latLong": "38.7167,-9.1333",
"phone": "+351213637423",
"link_url": "https://pasteisdebelem.pt/"
}
]
"""
