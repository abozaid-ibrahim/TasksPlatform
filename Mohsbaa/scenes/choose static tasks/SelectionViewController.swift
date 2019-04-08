//
//  SelectionViewController.swift
//  Mohsbaa
//
//  Created by abuzeid on 3/25/19.
//  Copyright © 2019 abuzeid. All rights reserved.
//

import UIKit
protocol TasksRepoOutput:class {
    func setData(_ tasks:[Task])
}

/**
 This part is VIPER architected
 This class fired for user choosing it's tasks,
 User could also create new UserTask,
 */
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

protocol SelectionView {
    func showLoading()
    func hideLoading()
    func reloadCollection()
}
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
extension SelectionViewPresenter :SelectionView{
func showLoading() {
    
}

func hideLoading() {
    
}

func reloadCollection() {
    
}

    
}
extension UIViewController{
    static var selectionViewController:UIViewController{
        return UIStoryboard.main.instantiateViewController(withIdentifier: "SelectionViewController")
    }
}
