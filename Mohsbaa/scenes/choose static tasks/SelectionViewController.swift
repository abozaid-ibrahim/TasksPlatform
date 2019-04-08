//
//  SelectionViewController.swift
//  Mohsbaa
//
//  Created by abuzeid on 3/25/19.
//  Copyright © 2019 abuzeid. All rights reserved.
//

import UIKit

/**
 This part is VIPER architected
 This class fired for user choosing it's tasks,
 User could also create new UserTask,
 */

protocol SelectionView {
    func showLoading()
    func hideLoading()
    func reloadCollection()
}
class SelectionViewController: UIViewController {
    
    @IBOutlet weak var selectionViewContainer: UIView!
     let childVC = ChoiceCollectionViewController<ChoiceItem>.init(collectionViewLayout: UICollectionViewFlowLayout.init() )

    var presenter = SelectionViewPresenter()
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.getTasks()
        
        
//        childVC.choices = presenter.tasks
        
        addChild(childVC)
        //Or, you could add auto layout constraint instead of relying on AutoResizing contraints
        childVC.view.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        childVC.view.frame = selectionViewContainer.bounds
        
        selectionViewContainer.addSubview(childVC.view)
        childVC.didMove(toParent: self)
        
        
        
        
    }
    
    
    
}
extension SelectionViewController :SelectionView{
    func showLoading() {
        ActivityLoadingIndicator.showLoad()
        
    }
    
    func hideLoading() {
        ActivityLoadingIndicator.hideLoading()
    }
    
    func reloadCollection() {
        self.childVC.collectionView.reloadData()
    }
    
    
}
extension UIViewController{
    static var selectionViewController:UIViewController{
        return UIStoryboard.main.instantiateViewController(withIdentifier: "SelectionViewController")
    }
}
