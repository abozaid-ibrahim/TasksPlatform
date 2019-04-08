//
//  DatabaseWrapper.swift
//  Mohsbaa
//
//  Created by abuzeid on 4/8/19.
//  Copyright © 2019 abuzeid. All rights reserved.
//

import Foundation
import Firebase
final class DatabaseWrapper{
    lazy var ref = Database.database().reference()
    
    
    static let shared = DatabaseWrapper()
    
    private init() {
       
    }
    func configure(){
         FirebaseApp.configure()
    }
}
