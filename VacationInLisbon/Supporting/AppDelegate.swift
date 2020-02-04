//
//  AppDelegate.swift
//  FeelTheLisbon
//
//  Created by Vladyslav PALAMARCHUK on 1/17/20.
//  Copyright © 2020 Vladyslav PALAMARCHUK. All rights reserved.
//

import UIKit
import CoreData

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        return loadingData()
    }

    func loadingData() -> Bool {
        
        fetchDataFromJSON()

         // bars in places
        for (placesIndex, types) in placesModel.enumerated() {
            // beatifulBars in Bars
            for (typeIndex, placesOfType) in types.enumerated() {
                // bar in beatifulBars
                for place in placesOfType {

                    let newPlace = fillDBFromArray(arrayElement: place)
                    
                    // define which array
                    switch placesIndex {
                    case 0:
                        if typeIndex == 0 {
                            beatifulBars.append(newPlace)
                        } else if typeIndex == 1 {
                            pinkStreetBars.append(newPlace)
                        } else if typeIndex == 2 {
                            roofTopBars.append(newPlace)
                        }
                    case 1:
                        if typeIndex == 0 {
                            bestCafes.append(newPlace)
                        } else if typeIndex == 1 {
                            kioskCafes.append(newPlace)
                        }
                    case 2:
                        if typeIndex == 0 {
                            alfamaRestaurants.append(newPlace)
                        } else if typeIndex == 1 {
                            principeRealRestaurants.append(newPlace)
                        }
                    default:
                        break
                    }
                }
            }
        }
        
        return true
    }
    
    func fetchDataFromJSON() {
        
        // fetch Bars
        beatifulBarsModel = parseJson(beatifulBarsJSON)
        pinkStreetBarsModel = parseJson(pinkStreetBarsJSON)
        roofTopBarsModel = parseJson(roofTopBarsJSON)
        
        // fetch Cafes
        bestCafesModel = parseJson(bestCafesJSON)
        kioskCafesModel = parseJson(kioskCafesJSON)
        
        // fetch Restauratns
        alfamaRestaurantsModel = parseJson(alfamaRestaurantsJSON)
        principeRealRestaurantsModel = parseJson(principeRealRestaurantsJSON)
        
        // sort
        beatifulBarsModel.sort { ($0.title ?? "").lowercased() < ($1.title ?? "").lowercased() }
        pinkStreetBarsModel.sort { ($0.title ?? "").lowercased() < ($1.title ?? "").lowercased() }
        roofTopBarsModel.sort { ($0.title ?? "").lowercased() < ($1.title ?? "").lowercased() }
        bestCafesModel.sort { ($0.title ?? "").lowercased() < ($1.title ?? "").lowercased() }
        kioskCafesModel.sort { ($0.title ?? "").lowercased() < ($1.title ?? "").lowercased() }
        alfamaRestaurantsModel.sort { ($0.title ?? "").lowercased() < ($1.title ?? "").lowercased() }
        principeRealRestaurantsModel.sort { ($0.title ?? "").lowercased() < ($1.title ?? "").lowercased() }
        
    }
    
    func fillDBFromArray(arrayElement place: PlaceDecodable) -> Place {
        
        var newPlace = Place()
        
        func getPrice(_ additional: String) -> String {
            var result = ""
            
            for char in additional {
                guard char == "$" else { continue }
                result.append(char)
            }
            return result
        }
        
        newPlace.title          = place.title
        newPlace.location       = place.location
        newPlace.about          = place.about
        newPlace.link           = place.link_url
        newPlace.mealService    = place.mealService
        newPlace.phone          = place.phone
        if let latLong = getLatLong(place.latLong ?? "") {
            newPlace.latitude   = latLong.latitude
            newPlace.longitude  = latLong.longitude
        }
        newPlace.atmosphere     = place.atmosphere
        newPlace.additional     = place.additional
//        newPlace.type           = type
        
        // Price $$$
        if let greyPrice = place.greyPrice {
            // (price -> "$$$") - (greyPrice -> "$$") => (newPlace.price = "$")
            let price = getPrice(place.additional ?? "").dropLast(greyPrice.count)
            newPlace.price = String(price)
            // Delete $ in end of line
            if let priceCount = newPlace.price?.count, (newPlace.additional ?? "").count > priceCount {
                newPlace.additional?.removeLast(priceCount + greyPrice.count + 2)
            }
        }
        
        // Shedule
        var sheduleInOneString: String = ""
        place.shedule?.forEach({ (shedule) in
            if var line = shedule.shedule {
                
                // Put \t after day (Mon:\t12:00 am)
                if let index = line.firstIndex(of: ":") {
                    let indexAfter = line.index(after: index)
                    let indexBefore = line.index(before: index)
                    switch line[indexBefore] {
                    case "i", "t":
                        line.insert(contentsOf: "\t\t", at: indexAfter)
                    default:
                        line.insert("\t", at: indexAfter)
                    }
                }
                sheduleInOneString.append(line)
                sheduleInOneString += "\n"
            }
        })
        newPlace.shedule = sheduleInOneString
        
        // Images
        newPlace.images = []
        for i in 1...4 {
            
            guard let title = place.title else { break }
            
            let imageName = title + String(i)
            if let image = UIImage(named: imageName) {
                newPlace.images?.append(image)
            }
        }
        return newPlace
    }

    


    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
        // Saves changes in the application's managed object context before the application terminates.
        self.saveContext()
    }

    // MARK: - Core Data stack

    lazy var persistentContainer: NSPersistentContainer = {
        /*
         The persistent container for the application. This implementation
         creates and returns a container, having loaded the store for the
         application to it. This property is optional since there are legitimate
         error conditions that could cause the creation of the store to fail.
        */
        let container = NSPersistentContainer(name: "FeelTheLisbon")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                 
                /*
                 Typical reasons for an error here include:
                 * The parent directory does not exist, cannot be created, or disallows writing.
                 * The persistent store is not accessible, due to permissions or data protection when the device is locked.
                 * The device is out of space.
                 * The store could not be migrated to the current model version.
                 Check the error message to determine what the actual problem was.
                 */
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()

    // MARK: - Core Data Saving support

    func saveContext () {
        let context = persistentContainer.viewContext
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }

}

