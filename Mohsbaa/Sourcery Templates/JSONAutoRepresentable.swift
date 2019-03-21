//
//  JSONAutoRepresentable.swift
//  Mohsbaa
//
//  Created by abuzeid on 3/19/19.
//  Copyright © 2019 abuzeid. All rights reserved.
//

import Foundation
protocol JSONAutoRepresentable {
    var name:String {get}
}
class Test:JSONAutoRepresentable{
    var name: String
    var id:String
    init(name:String,id:String) {
        self.id = id
        self.name = name
    }
}
