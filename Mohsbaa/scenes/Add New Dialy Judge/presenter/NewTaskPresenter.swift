//
//  NewTaskPresenter.swift
//  Mohsbaa
//
//  Created by abuzeid on 3/22/19.
//  Copyright © 2019 abuzeid. All rights reserved.
//

import Foundation
protocol NewTaskPresenter {
    func onSaveNewTaskClicked(task:Task)
    func presentHome()
}
final class NewUserTaskPresenter:NewTaskPresenter{
    private var view:NewTaskView?
    var interactor: NewTaskInteractor?
    var wireFrame: NewTaskRouter?
    
    func attach(view:NewTaskView){
        self.view = view
    }
   
    func onSaveNewTaskClicked(task:Task){
        interactor?.saveTask(task: task)
    }
    func presentHome(){
        guard let viewValue = view else {return}
        wireFrame?.presentHome(source: viewValue)
    }
}
