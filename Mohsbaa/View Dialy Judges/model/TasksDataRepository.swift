//
//  TasksDataRepository.swift
//  Mohsbaa
//
//  Created by abuzeid on 3/18/19.
//  Copyright © 2019 abuzeid. All rights reserved.
//

import Foundation

protocol TasksRepository {
    func getAllTasks()
    func addNewTask(task:Task)
}

final class TasksDataRepository:TasksRepository{
    func addNewTask(task: Task) {
        
    }
    
    func getAllTasks() {
        
    }
    
    
}
