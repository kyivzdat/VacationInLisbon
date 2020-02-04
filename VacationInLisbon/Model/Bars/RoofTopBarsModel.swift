//
//  RoofTopBarsModel.swift
//  FeelTheLisbon
//
//  Created by Vladyslav PALAMARCHUK on 1/20/20.
//  Copyright © 2020 Vladyslav PALAMARCHUK. All rights reserved.
//

import Foundation

let roofTopBarsJSON =
"""
[
{
"title": "PARK",
"additional": "Bar, Restaurant, Portuguese, $$$",
"greyPrice": "$$",
"about": "PARK’s name is a double pun on its unusual location – atop a multistorey car park – and its decor. When you emerge from the unpromising lift, you’ll step into a charming rooftop garden. Potted plants and trees dot the spacious café-bar, but the main draw is the views looking out across the riverfront (so get here early to bag a table). As PARK has a great range of drinks, bar snacks and occasional DJ sets to enjoy, you might find yourself staying here longer than planned.",
"location": "Lisbon, Lisbon, Portugal",
"latLong": "38.707010,-9.135640",
"phone": "+351215914011",
"link_url": "https://www.facebook.com/parklisboaofficial/"
},
{
"title": "Rio Maravilha",
"additional": "Bar, Restaurant, Portuguese, $$$",
"greyPrice": "$$",
"about": "Once the break lounge for textile factory workers, Rio Maravilha is now a hip bar-restaurant which has retained many of its original industrial fittings. Most people are drawn to its rooftop terraces which gaze out over the Ponte 25 de Abril and riverfront. The bar offers an enticing blend of Portuguese and Brazilian food and drinks, which you can enjoy in colourful surroundings. Here you’ll be confronted by the posterior of a rainbow statue of a woman, arms out to embrace the famous Cristo Rei statue which towers on the opposite side of the river.",
"location": "103 Rua Rodrigues de Faria, Lisboa, Lisboa, 1300-501, Portugal",
"latLong": "38.703510,-9.178820",
"phone": "+351966028229",
"link_url": "http://www.riomaravilha.pt/"
},
{
"title": "TOPO Martim Moniz",
"additional": "Bar, Cocktail Bar, Cocktails, $$$",
"greyPrice": "$",
"about": "Tucked away on the sixth floor of a shopping centre, TOPO is a fashionable bar that offers fabulous views of the castle and old town. Enjoy food or drinks across the long bar within its airy interior, or find a perch on wooden benches on its little terrace – a wonderful spot for a cocktail or fruit smoothie.",
"location": "Praça Martim Moniz, Lisboa, Lisboa, 1100-341, Portugal",
"latLong": "38.715030,-9.136680",
"phone": "+351215881322",
"link_url": "https://www.facebook.com/TOPO-1679047655647575/"
},
{
"title": "Lost In",
"additional": "Bar, Restaurant, Vegetarian, Mediterranean, European, Portuguese, Vegan, Gluten-free, $$$",
"greyPrice": "$$",
"about": "This Asian-influenced café-bar is perched on the lip of the steepest part of the Bairro Alto. Take a seat on its little terrace for a cocktail, port or glass of Portuguese wine. There’s also tasty food here, from full meals to petiscos (tapas-like snacks) such as vegetarian samosas or oysters with ginger. The music and panoramic vistas of the town enhance the relaxing atmosphere.",
"location": "Nº56-D Rua Dom Pedro V, Lisboa, Lisboa, 1250-094, Portugal",
"latLong": "38.715530,-9.145470",
"phone": "+351917759282",
"link_url": "http://www.lostinesplanada.com/"
},
{
"title": "Noobai",
"additional": "Restaurant, Bar, Coffee, $$$",
"greyPrice": "$$",
"about": "In typical Lisbon fashion, you have to go down a set of stairs to find this rooftop bar-restaurant, hidden below the Miradouro de Santa Catarina. Alongside an appealing dining room, there are three little terraces that look out over the river. Try Noobai’s wine of the month or one of Portugal’s distinctive liqueurs, such as ginja (made from cherries) or amêndoa amarga (bitter almonds).",
"location": "Lisboa, Lisboa, 1200-401, Portugal",
"latLong": "38.710790,-9.147180",
"phone": "+351213465014",
"link_url": "http://www.noobaicafe.com/"
},
{
"title": "Panorama Bar",
"additional": "Bar, Restaurant, Sushi, European",
"about": "For a touch of sophistication, take the elevator to the top-floor Panorama Bar in the Sheraton Hotel. Its high-backed chairs gaze out over city, taking in the old town and the Tagus River. Drinks come with frequent live music and DJ lounge sessions.",
"location": "1 Rua Latino Coelho, Lisboa, Lisboa, 1069-025, Portugal",
"latLong": "38.731800,-9.147000",
"phone": "+351213120000",
"link_url": "http://www.panorama-restaurante.com/"
},
{
"title": "Memmo Alfama Wine Bar and Terrace",
"additional": "Bar, Wine Bar, Portuguese, European",
"about": "This hotel bar is open to non-guests and is well worth seeking out. If you head to the back, you’ll find a gorgeous roof terrace with a plunge pool and views to die for, which include the steep warren of alleys that make up the Alfama – Lisbon’s oldest and most fascinating quarter – and the cruise ships that dock nearby.",
"location": "27 Travessa Merceeiras, Lisboa, Lisboa, 1100-348, Portugal",
"latLong": "38.710280,-9.130540",
"phone": "+351210495660",
"link_url": "https://www.memmohotels.com/alfama/pt/hotel-contacts"
},
{
"title": "The Insólito",
"additional": "Restaurant, Bar, Portuguese, Mediterranean, European, $$$",
"greyPrice": "$",
"about": "The Insólito is another Lisbon surprise, perched on top of a quirky hotel, itself on the hill of Bairro Alto. From this height, excellent views are guaranteed. Take a seat on the terrace, and order one of a cocktail while watching the lights come on at the São Jorge Castle, opposite the restaurant and bar.",
"location": "83 Rua de São Pedro de Alcântara, Lisboa, Lisboa, 1250-238, Portugal",
"latLong": "38.714980,-9.144690",
"phone": "+351213461381",
"link_url": "https://theinsolito.pt/"
},
{
"title": "Chapitô à Mesa",
"additional": "Bar, Restaurant, Portuguese, $$$",
"greyPrice": "$$",
"about": "Chapitô à Mesa was one of the first rooftop bars that opened in Lisbon, and its little esplanade is still one of the cutest, peering out over the rooftops of the Alfama district. Drinks are not expensive – it’s part of a non-profit circus school – and there is also a good restaurant.",
"location": "7 Costa do Castelo, Lisboa, Lisboa, 1149-079, Portugal",
"latLong": "38.711590,-9.133950",
"phone": "+351218875077",
"link_url": "http://chapito-a-mesa.thefork.rest/en_GB/"
},
{
"title": "Silk Club",
"additional": "Restaurant, Japanese, Contemporary, $$$",
"greyPrice": "$",
"about": "Above offices in the fashionable Chiado district, Silk is as smooth as its name. Partly an upmarket sushi restaurant and partly a nightclub, it also has a particularly fine rooftop bar that takes in the river. Join the moneyed set for a glass of bubbly.",
"location": "14 Rua da Misericórdia, Lisboa, Lisboa, 1200-273, Portugal",
"latLong": "38.711370,-9.142810",
"phone": "+351913009193",
"link_url": "https://www.silk-club.com/"
},
{
"title": "ROOFTOP BAR at Hotel Mundial",
"additional": "Bar, Cocktails, $$$",
"greyPrice": "$$",
"about": "Hotel Mundial, a high-rise hotel on the edge of Praça Martim Moniz, has put its two spacious flat rooftops to good use – they are now part of a sophisticated lounge bar. At one of the highest spots in the Baixa district, ROOFTOP BAR’s comfy seats and sofas are a great spot for 360-degree panoramas of the old town. Check before you head up here, though, as it’s sometimes booked for private parties.",
"location": "2 Praça Martim Moniz, Lisboa, Lisboa, 1100-341, Portugal",
"latLong": "38.715050,-9.136690",
"phone": "+351218842000",
"link_url": "https://www.hotel-mundial.pt/bars/rooftop-bar-lounge/"
}
]
"""
