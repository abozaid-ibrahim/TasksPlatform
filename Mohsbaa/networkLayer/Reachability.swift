//
//  Reachability.swift
//  Mohsbaa
//
//  Created by abuzeid on 3/22/19.
//  Copyright © 2019 abuzeid. All rights reserved.
//

import Foundation
protocol Reachable {
    static func isConnected()->Bool
    func isWifiConnection()->Bool
    func isDataConnection()->Bool
}
final class Reachability:Reachable{
    static func isConnected() -> Bool {
        return true
    }
    
    func isWifiConnection() -> Bool {
        return false
    }
    
    func isDataConnection() -> Bool {
        return false
    }
    
    
}
