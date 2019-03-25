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
        
        
    }
    override func viewDidAppear(_ animated: Bool) {
        let strs = [ChoiceItem(id: 22, isSelected: false, title: "adsf", background: nil),ChoiceItem(id: 22, isSelected: false, title: "adsf", background: nil),ChoiceItem(id: 22, isSelected: false, title: "adsf", background: nil),ChoiceItem(id: 22, isSelected: false, title: "adsf", background: nil),ChoiceItem(id: 22, isSelected: false, title: "adsf", background: nil)]
        let choices = ChoiceCollectionViewController<ChoiceItem>.init(collectionViewLayout: UICollectionViewFlowLayout.init() )
        choices.choices = strs
        self.pushViewController(choices, animated: true)
    }
}
struct ChoiceItem:SelectableCellItem{
    var id: Int
    
    var isSelected: Bool
    
    var title: String
    var background: String?
    
    
}
