//
//  AlfamaRestaurants.swift
//  FeelTheLisbon
//
//  Created by Vladyslav PALAMARCHUK on 1/20/20.
//  Copyright © 2020 Vladyslav PALAMARCHUK. All rights reserved.
//

import Foundation

let alfamaRestaurantsJSON =
"""
[
{
"title": "Prado",
"additional": "Restaurant, Portuguese, $$$",
"greyPrice": "$$",
"about": "At Prado, fine dining is replaced by casual dining – that’s food executed at a Michelin-star level, minus the exorbitant prices. Chef António Galapito values the farm-to-table concept above all, featuring only fresh, seasonal ingredients on his ever-changing menu. However, expect certain classic Portuguese treats, such as black swordfish and fresh cheese. Across the street from its location at The Lisboans is its grocery store, Prado Mercearia, where you can buy exquisite national products like black pork ham.",
"location": "2 Travessa Pedras Negras, Lisboa, Lisboa, 1100-404, Portugal",
"latLong": "38.710530,-9.134950",
"phone": "+351210534649",
"link_url": "http://pradorestaurante.com/"
},
{
"title": "Audrey’s",
"additional": "Restaurant, Continental",
"about": "Audrey’s is the in-house restaurant at the Santiago de Alfama Boutique Hotel and is the perfect choice if you are looking for a spot of brunch. While the cosy and elegant indoor decor will make you feel right at home, the outdoor seating area is a great place to relax and watch people slowly making their way up the hill from the Sé de Lisboa towards the popular Miradouro das Portas do Sol. The banana pancakes are a highlight, and if you have a sweet tooth, the brownies come highly recommended.",
"location": "12 Rua de Santiago, Lisboa, Lisboa, 1100-494, Portugal",
"latLong": "38.711440,-9.131270",
"phone": "+351213941616",
"link_url": "http://audreys-cafe.com/"
},
{
"title": "Restaurante Farol de Santa Luzia",
"additional": "Restaurant, Seafood, $$$",
"greyPrice": "$",
"about": "Perhaps one of the most well-known seafood spots in Alfama, Restaurante Farol de Santa Luzia lies right in the heart of the neighbourhood on Largo Santa Luzia. It is must-visit for fish and seafood lovers, offering flawless takes on classic dishes such as mexilhão de cebolada e pimentos (mussels with peppers in a tomato sauce) and lombo de bacalhau à lagareiro (grilled salted cod fillet with baked potatoes). If you’re in a group, try sharing the cataplana de peixes, a fish stew cooked in a traditional copper pan that will have you fighting over the final spoonful.",
"location": "5 Largo Santa Luzia, Lisboa, Lisboa, 1100-487, Portugal",
"latLong": "38.711760,-9.130620",
"phone": "+351218863884",
"link_url": "http://www.farolsantaluzia.com/"
},
{
"title": "A Travessa do Fado",
"additional": "Restaurant, Continental, Portuguese",
"about": "Located next to the Museu do Fado, this restaurant provides the perfect break for those visiting this iconic attraction dedicated to the melancholic music style that was born in Alfama. Simple yet well-executed starters such as peixinhos da horta (green bean tempura) and gambas ao alhinho (shrimp sautéed in garlic) make way for delicious mains such as fresh tuna steak on bread and black pork fillet. If the weather allows, make sure to ask for a table outside and grab a cold ‘imperial’ (small draught beer) while you wait.",
"location": "2 Largo do Chafariz de Dentro, Lisboa, Lisboa, 1100-605, Portugal",
"latLong": "38.711080,-9.128090",
"phone": "+351218870144",
"link_url": "https://www.facebook.com/ATravessaDoFado/"
},
{
"title": "Parreirinha de Alfama",
"additional": "Restaurant, Portuguese, $$$",
"about": "No trip to Alfama is complete without a visit to a typical casa de fado, which is where one of Portugal’s oldest music traditions joins forces with delicious food, and there aren’t many places that do it as beautifully as Parreirinha de Alfama. Located on a quiet street corner that many passers-by simply don’t notice, this place comes to life at night with performances by some fantastic local fadistas (fado performers) – including the owner and veteran fado singer Argentina Santos, who has been pleasing crowds since the 1950s.",
"location": "1 Beco do Espírito Santo, Lisboa, Lisboa, 1100-222, Portugal",
"latLong": "38.711550,-9.128050",
"phone": "+351218868209",
"link_url": "http://www.parreirinhadealfama.com/"
},
{
"title": "Boi-Cavalo",
"additional": "Restaurant, Contemporary",
"about": "Boi-Cavalo is an exciting gastronomical experience. It has a bold multi-course tasting menu that changes almost weekly depending on the availability of certain ingredients or what’s inspiring chef Hugo Brito that day. The small space is unpretentious and cosy, with customers sitting right next to the kitchen where they can see the brilliant team at work. It’s an adventure and one not recommended to those looking for classic Portuguese food.",
"location": "70B Rua do Vigário, Lisboa, Lisboa, 1100-405, Portugal",
"latLong": "38.712630,-9.127360",
"phone": "+351218871653",
"link_url": "https://boi-cavalorestaurante.eatbu.com/"
},
{
"title": "Princesa do Castelo",
"additional": "Restaurant, Vegetarian, $$$",
"greyPrice": "$$",
"about": "If you are looking for first-class vegetarian food, this is your spot. Many plant-based restaurants have popped up in Lisbon in recent years, and Princesa do Castelo, just a short walk from the historic São Jorge Castle, is one of the best in Alfama. Hearty bean stews, mushroom and avocado toasts, and seitan shepherd’s pie are just some of the dishes on rotation. However, its menu changes almost every week, so make sure to follow the restaurant on Facebook to know what’s on available.",
"location": "64A Rua do Salvador, Lisboa, Lisboa, 1100-466, Portugal",
"latLong": "38.714150,-9.130640",
"phone": "+351218871263",
"link_url": "https://www.facebook.com/pages/Princesa-do-Castelo-Restaurante-Vegetariano/436028109780236"
},
{
"title": "Memmo Alfama Wine Bar and Terrace",
"additional": "Bar, Wine Bar, Portuguese, European",
"about": "Located on the first floor of the Memmo Alfama Hotel, the Wine Bar and Terrace has unparalleled views of Alfama, all the way to Baixa and the Tagus River. The all-white decor and the contrasting red-tile infinity pool represent the neighbourhood’s typical houses and their roof tiles. It also doesn’t hurt that the tapas are great and the wine list features some of the best wine Portugal has to offer.",
"location": "27 Travessa Merceeiras, Lisboa, Lisboa, 1100-348, Portugal",
"latLong": "38.710281,-9.130540",
"phone": "+351210495660",
"link_url": "https://www.memmohotels.com/alfama/pt/hotel-contacts"
},
{
"title": "Restaurante Esperança Sé",
"additional": "Restaurant, Italian",
"about": "After a full day of exploring Alfama, sit down and relax at the cosy Restaurante Esperança Sé, where great Italian food meets extraordinary service. The outdoor seating area backs onto the Sé de Lisboa, making for a atmospheric setting. In an area littered with touristy options, this restaurant keeps it genuine and affordable under the simple premise of taking good quality produce and turning it into a delicious meal. The pizzas are the main reason people flock here, but do yourself a favour and order the peach sangria.",
"location": "103 Rua de São João da Praça, Lisboa, Lisboa, 1100-585, Portugal",
"latLong": "38.709490,-9.132010",
"phone": "+351218870189",
"link_url": "https://www.facebook.com/RestauranteEsperancaSe/"
}
]
"""
