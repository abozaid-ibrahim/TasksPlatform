//
//  Task.swift
//  Mohsbaa
//
//  Created by abuzeid on 3/18/19.
//  Copyright © 2019 abuzeid. All rights reserved.
//

import Foundation
protocol Task {
    var name:String{get set}
}
final class UserTask:Task{
    var name: String
    init(name:String) {
        self.name =  name
    }
    
}
