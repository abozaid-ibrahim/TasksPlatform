//
//  NewTaskViewController.swift
//  Mohsbaa
//
//  Created by abuzeid on 3/18/19.
//  Copyright © 2019 abuzeid. All rights reserved.
//

import UIKit
protocol NewTaskView {
    func dismiss()
}
final class NewTaskViewController: UIViewController {
    @IBOutlet private weak var stackView: UIStackView!
    @IBOutlet private weak var taskTextField: UITextField!
    
    private var subTasksFields = [SubTaskTextField]()
    var presenter:NewTaskPresenter?
    override func viewDidLoad() {
        super.viewDidLoad()
        let addItem = UIBarButtonItem(image: #imageLiteral(resourceName: "save_list"), landscapeImagePhone: nil, style: .plain, target: self, action: #selector(self.onSaveClicked))
        
        self.navigationItem.rightBarButtonItem = addItem
        
    }
    @objc private func onSaveClicked(sender:Any){
//        let task = UserTask(context: taskTextField.text ?? "")
//        task.subTasks  = subTasksFields.map{ $0.text ?? "" }
//            .filter{!$0.isEmpty}
//            .map{UserTask(name: $0)}
//        presenter?.onSaveNewTaskClicked(task: task)
    }
    
    
    
    
    
    @IBAction func addSubTask(_ sender: Any) {
        let newSubTaskField = SubTaskTextField()
        self.stackView.addArrangedSubview(newSubTaskField)
        subTasksFields.append(newSubTaskField)
        newSubTaskField.becomeFirstResponder()
    }
    
}
extension NewTaskViewController:NewTaskView{
    func dismiss() {
        self.navigationController?.popViewController(animated: true)
    }
    
    
}
