//
//  Protocols.swift
//  Mohsbaa
//
//  Created by abuzeid on 3/25/19.
//  Copyright © 2019 abuzeid. All rights reserved.
//

import Foundation

enum SelectionMode{
    case single, multiple
}

protocol Choosable {
    associatedtype Item
    func getChoices()->[Item]
}
protocol SelectableCellItem {
    var id:Int{get}
    var isSelected:Bool{get set}
    var title:String {get}
    var background:String?{get set}
    
}
