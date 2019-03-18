//
//  MainViewController.swift
//  Mohsbaa
//
//  Created by abuzeid on 3/18/19.
//  Copyright © 2019 abuzeid. All rights reserved.
//

import UIKit

class MainViewController: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        DispatchQueue.main.asyncAfter(deadline: .now() + 1, execute: {
            let addItem = UIBarButtonItem(image: #imageLiteral(resourceName: "appointment"), landscapeImagePhone: nil, style: .plain, target: self, action: #selector(self.onAddClicked(sender:)))
        
        self.navigationItem.rightBarButtonItem = addItem
        })
    }
    @objc private func onAddClicked(sender:Any){
       let newtaskController =  NewTaskRouter.createNewTaskModule()
        self.pushViewController(newtaskController, animated: true)
    }
    
    
}
