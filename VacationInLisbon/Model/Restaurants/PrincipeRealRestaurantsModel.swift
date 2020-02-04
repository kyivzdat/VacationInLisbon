//
//  PrincipeRealRestaurantsModel.swift
//  FeelTheLisbon
//
//  Created by Vladyslav PALAMARCHUK on 1/20/20.
//  Copyright © 2020 Vladyslav PALAMARCHUK. All rights reserved.
//

import Foundation

let principeRealRestaurantsJSON =
"""
[
{
"title": "A Cevicheria",
"additional": "Restaurant, Peruvian, Seafood, $$$",
"greyPrice": "$",
"about": "A Cevicheria’s specialty is its wonderful ceviche, a traditional Peruvian dish made with raw salmon, octopus or shrimp in a citrus juice. The chefs prepare food right in front of the customers’ eyes in the open kitchen. The interior is amiable, decorated with Portuguese tiles and a huge octopus hangs from the ceiling. Customers praise this little Peruvian heaven, saying that the meals remind you of pieces of art with elegant decorations.",
"location": "129 R. Dom Pedro V, Lisboa, 1250-096 , Portugal",
"latLong": "38.715970,-9.147540",
"phone": "+351218038815"
},
{
"title": "Bistro Edelweiss",
"additional": "Bistro, Restaurant, German, Swiss, European, Vegetarian, Vegan, Gluten-free, $$$",
"greyPrice": "$$",
"about": "Bistro Edelweiss is located in a back street close to the busy Principe Real. Its interior is a modern interpretation of the iconic retro style of the Swiss Alps in the 1970s, with wooden furniture, soft carpets and stuffed animal heads that are so reminiscent of Swiss chalets. Chef and owner Adu Wahlen offers homemade Swiss food and a selection of German beers. Famous cheese fondue is available here throughout the year.",
"location": "2 Rua de São Marçal, Lisboa, Lisboa, 1200-418, Portugal",
"latLong": "38.714350,-9.151170",
"phone": "+351930414725",
"link_url": "http://www.edelweiss-bistro.com/"
},
{
"title": "In Bocca al Lupo",
"additional": "Pizzeria, Restaurant, Vegetarian, Italian, Mediterranean, Gluten-free, Vegan, $$$",
"greyPrice": "$$",
"about": "In Bocca al Lupo is the first organic pizzeria to open in Lisbon, and the chefs prepare all meals in a traditional stone oven. Various organic toppings are produced in Portugal and Italy, and are imported directly from manufacturers. Customers are free to adopt a variety of additional toppings, and the restaurant also serves vegetarian versions of beloved classic pizzas. When it comes to drinks, In Bocca Al Lupo has carefully prepared a wide selection of organic wines from the Lisbon region.",
"location": "5 Rua Manuel Bernardes, Lisboa, Lisboa, 1200-009, Portugal",
"latLong": "38.714930,-9.152320",
"phone": "+351213900582",
"link_url": "http://www.inboccaallupo.pt/"
},
{
"title": "Le Moustache Smokery",
"additional": "Restaurant, Portuguese, $$$",
"greyPrice": "$",
"about": "This restaurant came to existence through a crowd funding project, and its unique concept has been receiving positive reviews from critics. As the name implies, the restaurant specializes in smoked food, and the main chef Daniel Cordoso uses an oven to cook everything from meat to desserts. Daniel constantly ensures the outstanding quality of his smoked steaks, with an average drying period of between 10 to 16 hours. The vital element of the interior design is reusing old furniture, including wooden chairs and tables. Le Moustache Smokery serves wonderful homemade sausages and schnitzel.",
"location": "44 Praça Flores , Lisboa, Portugal",
"latLong": "38.715360,-9.151700",
"phone": "+351218263519"
},
{
"title": "O Prego da Peixaria",
"additional": "Restaurant, Portuguese",
"about": "O Prego da Peixaria serves fish burgers made with tuna, cod or salmon. The restaurant provides options for vegetarians that come in different types of bread. All the dishes come together with a plate of fries. The venue is a combination of furniture made from recycled materials and steel constructions, and the tables are placed together to create a feel of community feel, very similar to school canteens.",
"location": "49 Avenida 24 de Julho, Lisboa, Lisboa, 1200-161, Portugal",
"latLong": "38.7062724,-9.1443824",
"phone": "+351213470556",
"link_url": "http://opregodapeixaria.com/EN/"
},
{
"title": "Restaurant XL",
"additional": "Restaurant, European, Portuguese, Vegetarian, Gluten-free, $$$",
"greyPrice": "$",
"about": "This small yet cozy restaurant is located opposite the parliament building, and it is frequented by local politicians and business people. The excellent sirloin steaks and soufflés have long been the specialty of XL. The restaurant features a modest, classical interior with chandeliers and dark chocolate-painted wooden floors, and the professional attitude of highly trained staff makes it an unforgettable place to dine. XL also has a great cellar offering a large variety of Portuguese wines.",
"location": "57 Calçada da Estrela, Lisboa, Lisboa, 1200-661, Portugal",
"latLong": "38.7167,-9.1333",
"phone": "+351213956118",
"link_url": "https://www.facebook.com/XL-Restaurante-331205053588354/"
},
{
"title": "Esplanada do Principe Real",
"additional": "Park",
"about": "This spacious restaurant is located on a terrace next to one of the small garden parks in Principe Real. It is always full of both local people and tourists. This esplanade is great for enjoying a quick meal or coffee. While in the area, it is worth visiting Principe Real Garden which holds an organic market with lots of fresh fruits and vegetables every Saturday.",
"location": "Praça do Príncipe Real, Lisboa, Lisboa, 1250-096, Portugal",
"latLong": "38.7163139,-9.1477339",
"phone": "+351912054890",
"link_url": "http://www.cm-lisboa.pt/equipamentos/equipamento/info/jardim-do-principe-real-jardim-franca-borges"
}
]
"""
