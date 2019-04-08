//
//  SubTaskTextField.swift
//  Mohsbaa
//
//  Created by abuzeid on 3/22/19.
//  Copyright © 2019 abuzeid. All rights reserved.
//

import UIKit
final class SubTaskTextField:UITextField{
    
    required override init(frame: CGRect) {
            super.init(frame: frame)
//            self.layer.cornerRadius = 5.0
//            self.layer.borderColor = UIColor.gray.cgColor
//            self.layer.borderWidth = 0.5
//            self.tintColor = UIColor.white
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
