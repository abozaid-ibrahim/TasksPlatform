//
//  DatabaseManager.swift
//  Mohsbaa
//
//  Created by abuzeid on 3/24/19.
//  Copyright © 2019 abuzeid. All rights reserved.
//

import UIKit
import CoreData

final class DataBaseManager{
    func getAllTasks()->[UserTask]{
        guard let appDelegate =
            UIApplication.shared.delegate as? AppDelegate else {
                return []
        }
        
        let managedContext =
            appDelegate.persistentContainer.viewContext
        
        //2
        let fetchRequest =
            NSFetchRequest<NSManagedObject>(entityName: "Tasks")
        
        //3
        do {
            return try managedContext.fetch(fetchRequest) as! [UserTask]
        } catch let error as NSError {
            print("Could not fetch. \(error), \(error.userInfo)")
            return []
        }
    }}
