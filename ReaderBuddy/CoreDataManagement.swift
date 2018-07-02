//
//  CoreDataManagement.swift
//  ReaderBuddy
//
//  Created by Dean Ivanov on 26/06/2018.
//  Copyright © 2018 Dean Ivanov. All rights reserved.
//


import Foundation
import CoreData

class DBManagement {
    var container: NSPersistentContainer {
        let containter = NSPersistentContainer(name: "Books")
        containter.loadPersistentStores { (description, error) in
            guard error == nil else {
                print("Error: \(error!)")
                return
            }
        }
        
        return containter
    }
    
    var managedContext: NSManagedObjectContext {
        return container.viewContext
    }
}
