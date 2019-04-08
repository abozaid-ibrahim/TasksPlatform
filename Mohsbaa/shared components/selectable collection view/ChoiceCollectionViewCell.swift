//
//  ChoiceCollectionViewCell.swift
//  Mohsbaa
//
//  Created by abuzeid on 3/25/19.
//  Copyright © 2019 abuzeid. All rights reserved.
//

import UIKit

class ChoiceCollectionViewCell: UICollectionViewCell {
static let identifier =  "ChoiceCollectionViewCell"
    @IBOutlet private weak var bgImageView: UIImageView!
    @IBOutlet private weak var titleLbl: UILabel!
    var title:String = ""{
        didSet{
            titleLbl.text  = title
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
    }

}
