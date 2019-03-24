//
//  ViewController.swift
//  Mohsbaa
//
//  Created by abuzeid on 3/18/19.
//  Copyright © 2019 abuzeid. All rights reserved.
//

import UIKit

final class TasksListViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let addItem = UIBarButtonItem(image: #imageLiteral(resourceName: "add_list"), landscapeImagePhone: nil, style: .plain, target: self, action: #selector(self.onAddClicked(sender:)))
        
        self.navigationItem.rightBarButtonItem = addItem
    
}
@objc private func onAddClicked(sender:Any){
    let newtaskController =  NewTaskRouter.createNewTaskModule()
    self.navigationController?.pushViewController(newtaskController, animated: true)
}



    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: TaskTableViewCell.id) else {
            return UITableViewCell()
        }
        return cell
    }
}


