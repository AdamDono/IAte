//
//  DataController.swift
//  IAte
//
//  Created by DA M1 MAC 89 on 2023/07/03.
//

import Foundation
import CoreData

class DataColtroller: ObservableObject {
    
    let container = NSPersistentContainer(name : "FoodModel")
    
    init(){container.loadPersistentStores {desc, error in
        if let error = error {
            print ("failed to load the data \(error.localizedDescription)")
            
        }
    }
        
    }
    
    func save(context: NSManagedObjectContext) {
        do {
            try context.save()
            print ("Data Saved!!!")
        }
        catch {
            print("We Could `not Save the data.....")
        }
    }
}
