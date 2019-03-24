//
//  NewTaskRouter.swift
//  Mohsbaa
//
//  Created by abuzeid on 3/18/19.
//  Copyright © 2019 abuzeid. All rights reserved.
//

import UIKit

final class NewTaskRouter{
    
    class func createNewTaskModule() -> UIViewController {
        let viewController = UIStoryboard.main.instantiateViewController(withIdentifier: "NewTaskViewController")
        guard let newTaskVC = viewController as? NewTaskViewController else  {return UIViewController()}
        let presenter = NewUserTaskPresenter()
        let interactor = NewUserTaskInteractor(network: RemoteDataHandler())
        interactor.presenter = presenter
        newTaskVC.presenter = presenter
        presenter.interactor = interactor
        presenter.attach(view: newTaskVC)
        return newTaskVC
        
        
    }
    func presentHome(source:NewTaskView){
        guard let sourceView = source as? UIViewController else {return}
        sourceView.navigationController?.popViewController(animated: true)
    }
    
    
    
    
}

extension UIStoryboard{
    static var main:UIStoryboard{
        return UIStoryboard(name: "Main", bundle: nil)
    }
}



