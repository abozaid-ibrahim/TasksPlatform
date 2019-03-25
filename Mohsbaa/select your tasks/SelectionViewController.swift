//
//  SelectionViewController.swift
//  Mohsbaa
//
//  Created by abuzeid on 3/25/19.
//  Copyright © 2019 abuzeid. All rights reserved.
//

import UIKit

class SelectionViewController: UIViewController {
    
    @IBOutlet weak var selectionViewContainer: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

         
         let strs = [ChoiceItem(id: 22, isSelected: false, title: "adsf", background: nil),ChoiceItem(id: 22, isSelected: false, title: "adsf", background: nil),ChoiceItem(id: 22, isSelected: false, title: "adsf", background: nil),ChoiceItem(id: 22, isSelected: false, title: "adsf", background: nil),ChoiceItem(id: 22, isSelected: false, title: "adsf", background: nil)]
        let childVC = ChoiceCollectionViewController<ChoiceItem>.init(collectionViewLayout: UICollectionViewFlowLayout.init() )
        childVC.choices = strs
addChild(childVC)
        //Or, you could add auto layout constraint instead of relying on AutoResizing contraints
        childVC.view.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        childVC.view.frame = selectionViewContainer.bounds
        
        selectionViewContainer.addSubview(childVC.view)
        childVC.didMove(toParent: self)
        
    
}
    


}



@nonobjc extension UIViewController {
    func add(_ child: UIViewController, frame: CGRect? = nil) {
        addChild(child)
        
        if let frame = frame {
            child.view.frame = frame
        }
        
        view.addSubview(child.view)
        child.didMove(toParent: self)
    }
    
    func remove() {
        willMove(toParent: nil)
        view.removeFromSuperview()
        removeFromParent()
    }
}
extension UIViewController{
    static var selectionViewController:UIViewController{
        return UIStoryboard.main.instantiateViewController(withIdentifier: "SelectionViewController")
    }
}
