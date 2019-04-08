//
//  SelectionViewPresenter.swift
//  Mohsbaa
//
//  Created by abuzeid on 4/8/19.
//  Copyright © 2019 abuzeid. All rights reserved.
//

import Foundation

final class SelectionViewPresenter:TasksRepoOutput{
    var tasksRepo:TasksRepositoryInput = TasksDataRepository()
    var view:SelectionView!
    var tasks:[Task] = [Task]()
    
    func setData(_ tasks: [Task]) {
        self.tasks.append(contentsOf: tasks)
        view.hideLoading()
        view.reloadCollection()
    }
    
    
    
    func getTasks(){
        view.showLoading()
        tasksRepo.getAllTasks()
    }
}
