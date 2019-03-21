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
        guard  viewController is NewTaskViewController else  {return UIViewController()}
        return viewController
        
        
    }
    
    
    
    
    
}

extension UIStoryboard{
    static var main:UIStoryboard{
        return UIStoryboard(name: "Main", bundle: nil)
    }
}



