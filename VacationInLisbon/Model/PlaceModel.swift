//
//  PlaceModel.swift
//  FeelTheLisbon
//
//  Created by Vladyslav PALAMARCHUK on 1/20/20.
//  Copyright © 2020 Vladyslav PALAMARCHUK. All rights reserved.
//

import Foundation
import UIKit

struct PlaceDecodable: Decodable {
    
    var title:          String?
    var additional:     String?
    var greyPrice:      String?
    var about:          String?
    var location:       String?
    var latLong:        String?
    var phone:          String?
    var link_url:       String?
    var mealService:    String?
    var atmosphere:     String?
    var shedule:        [Shedule]?
    
    struct Shedule: Decodable {
        var shedule: String?
    }
}

struct Place {
    var title:          String?
    var additional:     String?
    var price:          String?
    var about:          String?
    var location:       String?
    var latitude:       String?
    var longitude:      String?
    var phone:          String?
    var link:           String?
    var mealService:    String?
    var atmosphere:     String?
    var shedule:        String?
    var images:         [UIImage]?
}

let placesTitle =       ["Bars", "Cafes", "Restaurants"]
let barsTitle =         ["The Most Beatiful Bars", "Bars and Clubs on Pink Street", "Rooftop Bars"]
let cafesTitle =        ["The Best Cafes", "Kiosk Cafés"]
let restaurantsTitle =  ["Restaurants In Alfama", "Restaurants In Principe Real"]

// JSON -> MODEL -> PLACE

// JSON -> Model

// Bars
var beatifulBarsModel: [PlaceDecodable] = []
var pinkStreetBarsModel: [PlaceDecodable] = []
var roofTopBarsModel: [PlaceDecodable] = []

//Cafes
var bestCafesModel: [PlaceDecodable] = []
var kioskCafesModel: [PlaceDecodable] = []

//Restaurants
var alfamaRestaurantsModel: [PlaceDecodable] = []
var principeRealRestaurantsModel: [PlaceDecodable] = []

let placesModel =            [barsModel, cafesModel, restaurantsModel]  // [[[PlaceDecodable]]]
//let placesModel =            [barsModel]

let barsModel =              [beatifulBarsModel, pinkStreetBarsModel, roofTopBarsModel] // [[PlaceDecodable]]
let cafesModel =             [bestCafesModel, kioskCafesModel]
let restaurantsModel =       [alfamaRestaurantsModel, principeRealRestaurantsModel]

// Model -> Place

// Bars
var beatifulBars: [Place] = []
var pinkStreetBars: [Place] = []
var roofTopBars: [Place] = []

//Cafes
var bestCafes: [Place] = []
var kioskCafes: [Place] = []

//Restaurants
var alfamaRestaurants: [Place] = []
var principeRealRestaurants: [Place] = []

let placesArr =            [barsArr, cafesArr, restaurantsArr]  // [[[Place]]]

let barsArr =              [beatifulBars, pinkStreetBars, roofTopBars] // [[Place]]
let cafesArr =             [bestCafes, kioskCafes]
let restaurantsArr =       [alfamaRestaurants, principeRealRestaurants]
