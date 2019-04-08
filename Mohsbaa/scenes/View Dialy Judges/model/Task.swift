//
//  Task.swift
//  Mohsbaa
//
//  Created by abuzeid on 3/18/19.
//  Copyright © 2019 abuzeid. All rights reserved.
//

import Foundation
import CoreData


protocol Task {
    var name:String{get set}
    var subTasks:[Task]? {get set}
}

final class UserTask:NSManagedObject, Task{
    var subTasks: [Task]?
    
    @NSManaged var name:String
    
//    convenience init( name: String,managedObjectContext: NSManagedObjectContext ) {
//        let entity = NSEntityDescription.entity(forEntityName: "Item", in: managedObjectContext)!
////        super.init(context: self)
//        self.name =  name
//    }
    
}



/**
 Enum for Event Entity member fields
 */
enum EventAttributes: String {
    case
    eventId    = "eventId",
    title      = "title",
    date       = "date",
    venue      = "venue",
    city       = "city",
    country    = "country",
    attendees  = "attendees",
    fb_url      = "fb_url",
    ticket_url = "ticket_url"
    
    static let getAll = [
        eventId,
        title,
        date,
        venue,
        city,
        country,
        attendees,
        fb_url,
        ticket_url
    ]
}


/**
 The Core Data Model: Event
 */
class Event: NSManagedObject {
    @NSManaged var attendees: AnyObject
    @NSManaged var city: String
    @NSManaged var country: String
    @NSManaged var venue: String
    @NSManaged var eventId: String
    @NSManaged var date: Date
    @NSManaged var fb_url: AnyObject
    @NSManaged var ticket_url: AnyObject
    @NSManaged var title: String
}
