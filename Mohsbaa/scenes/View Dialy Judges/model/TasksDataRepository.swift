//
//  TasksDataRepository.swift
//  Mohsbaa
//
//  Created by abuzeid on 3/18/19.
//  Copyright © 2019 abuzeid. All rights reserved.
//

import Foundation

protocol TasksRepositoryInput {
    var output:TasksRepoOutput?{get set}
    func getAllTasks()
}

final class TasksDataRepository:TasksRepositoryInput{
    weak var output:TasksRepoOutput?
    
  
    
    func getAllTasks() {
    
        
        
        output?.setData([])
    }
    
    
}

