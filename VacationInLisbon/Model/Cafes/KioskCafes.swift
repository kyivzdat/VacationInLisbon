//
//  KioskCafes.swift
//  FeelTheLisbon
//
//  Created by Vladyslav PALAMARCHUK on 1/20/20.
//  Copyright © 2020 Vladyslav PALAMARCHUK. All rights reserved.
//

import Foundation

let kioskCafesJSON =
"""
[
{
"title": "Quiosque Clara Clara",
"additional": "Food Kiosk, Portuguese",
"about": "Located in the Botto Machado garden park off to the side of the National Pantheon, the Quiosque Clara Clara is a peaceful retreat near one of the city’s most touristy neighborhoods, making it a great place to know. Views of the 17th-century church and the Tagus River add to the idyllic atmosphere, and this is one of the kiosks that attracts families and locals who live in the area. Espresso coffee costs roughly €1 (give or take a few cents depending on how you take it), and snacks like Portuguese pastries aren’t much more. The kiosk also serves beer, wine, and lemonade.",
"location": "Lisboa, Lisboa, 1100-471, Portugal",
"latLong": "38.7440523,-9.1518279",
"phone": "+3512s18850172",
"link_url": "https://clara-clara-cafe.business.site/"
},
{
"title": "Quiosque Ribeira das Naus",
"additional": "Bar, Food Kiosk, Portuguese, $$$",
"greyPrice": "$$",
"about": "One of Lisbon’s busiest and most popular kiosks is no surprise, located by the Tagus River and a short five-minute walk from the busy Cais do Sodré district. The perfect place to enjoy the riverside and a view of the bridge while sipping a cocktail or beer, it is also one of the hardest to find a seat despite space on the patio. If you do find a seat, however, this is a key location to people watch, and there is usually music playing during the weekends and evenings.",
"location": "5 Avenida Ribeira das Naus, Lisboa, Lisboa, 1200-000, Portugal",
"latLong": "38.71667,-9.13333",
"phone": "+351917427013",
"link_url": "https://www.facebook.com/RibeiradasNausLisboa"
},
{
"title": "Quiosque do Miradouro de São Pedro de Alcântara",
"additional": "Food Kiosk, Portuguese",
"about": "The Miradouro de São Pedro de Alcântara is one of Lisbon’s most famous lookout points, characterized by the terrace gardens, statues, fountain, and amazing scenery that includes the Tagus River, the Castelo de São Jorge, and downtown Lisbon. Instead of moving along after snapping some iconic photos, why not sit at one of the tables for a coffee and snack and enjoy the gardens a little longer? Located in Bairro Alto and near Principe Real, and at the top of the Gloria Funicular, it is one of the most visited kiosks and miradouros in the city.",
"location": "Rua de São Pedro de Alcântara, Lisboa, Lisboa, 1200-470, Portugal",
"latLong": "38.7167,-9.1333",
"phone": "Visit website"
},
{
"title": "Quiosque Ribadouro",
"additional": "Food Kiosk, Seafood, Portuguese, $$$",
"greyPrice": "$",
"about": "Trendy Avenida da Liberdade is home to a few lovely kiosks, but one unique spot is the Quiosque Ribadouro due to its preference for seafood snacks. Oysters, shrimp, and clams are just a few menu items that you can choose to enjoy while watching Lisbon’s designer avenue in action.",
"location": "Av. da Liberdade, Lisboa, 1250-001, Portugal",
"latLong": "38.7234688,-9.1484923"
},
{
"title": "Quiosque O Melhor Bolo de Chocolate do Mundo",
"additional": "Cafe, Food Kiosk, Portuguese, Pastries, $$$",
"greyPrice": "$",
"about": "Is there anyone who wouldn’t love a kiosk that serves delicious chocolate cake? The Quiosque O Melhor Bolo de Chocolate do Mundo is another great spot on Avenida da Liberdade that specializes in what they call “the best chocolate cake in the world.” It is also a branch of the café also named O Melhor Bolo de Chocolate do Mundo. In addition to dessert, this kiosk also serves toasts, fresh juices, Mexican tortillas, and more.",
"location": "Avenida da Liberdade, Lisboa, 1250-145, Portugal",
"latLong": "38.719539642333984,-9.144495964050293",
"phone": "+351919299242"
},
{
"title": "Quiosque Banana Café",
"additional": "Cafe, Food Kiosk, Portuguese, $$$",
"greyPrice": "$$",
"about": "Lisbon has two Banana Café kiosks, known for their fruit smoothies, toasted sandwiches, and salads, but the one further long on Avenida da Liberdade may be a little extra worthy of the spotlight. Not only is it surrounded by garden paths, but it is near many of the city’s designer shopping opportunities. This kiosk is also where you can usually find musicians serenading diners, and on special evenings there is even dancing.",
"location": "13 Avenida da Liberdade, Lisboa, 1150-048, Portugal",
"latLong": "38.7167,-9.1333",
"phone": "+351213026160"
},
{
"title": "Quiosque Lisboa - Praça Luís de Camões",
"additional": "Food Kiosk, Bar, Portuguese, $$$",
"greyPrice": "$$",
"about": "A short few minutes’ walk from Chiado’s shopping and surrounded by cafés and historic hotels in lower Bairro Alto is the famous kiosk in Praça Luís de Camões, one of the oldest in the city that was eventually renovated. A popular and convenient meeting spot for friends in the downtown area, it is always busy but worth seeking out for the experience as much as for a sip of the traditional drinks that are made there (hence its nickname quiosque de refresco, meaning “refreshment kiosk”).",
"location": "Praça Luís de Camões , Lisboa, Portugal",
"latLong": "38.710569,-9.1434218"
},
{
"title": "Quiosque Portas do Sol",
"additional": "Food Kiosk, Bar, Portuguese, $$$",
"greyPrice": "$$",
"about": "Quiosque Portas do Sol is in another iconic picture-perfect spot in Alfama with views of the Tagus River, the top of the National Pantheon, and the St. Vincent Monastery. Grab a cocktail at sunset, or make this your hop-off spot from a tuk-tuk or the historic tram 28 that regularly trundles past.",
"location": "Largo Portas do Sol, Lisboa, 1100-411, Portugal",
"latLong": "38.7122382,-9.1304019"
}
]
"""
