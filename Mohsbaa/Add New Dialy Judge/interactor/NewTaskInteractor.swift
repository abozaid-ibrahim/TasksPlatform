//
//  NewTaskInteractor.swift
//  Mohsbaa
//
//  Created by abuzeid on 3/22/19.
//  Copyright © 2019 abuzeid. All rights reserved.
//

import Foundation
protocol NewTaskInteractor {
    var networkClient:RemoteDataProxy{get}
    var presenter: NewTaskPresenter?{get}
    func saveTask(task:Task)
}

final class NewUserTaskInteractor:NewTaskInteractor{
    var networkClient: RemoteDataProxy
    
    var presenter: NewTaskPresenter?
    
    func saveTask(task: Task) {
        //check if network is avaliable
        if Reachability.isConnected(){
            gotoHomeScreen()
        }else{
            gotoHomeScreen()
        }
        //
    }
    private func gotoHomeScreen(){
        presenter?.presentHome()
    }
    
    init(network:RemoteDataProxy) {
        self.networkClient = network
    }
    
}
