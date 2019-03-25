//
//  ChoiceCollectionViewController.swift
//  Mohsbaa
//
//  Created by abuzeid on 3/25/19.
//  Copyright © 2019 abuzeid. All rights reserved.
//

import UIKit

final class ChoiceCollectionViewController<T:SelectableCellItem>: UICollectionViewController{
    var selectionMode:SelectionMode = .multiple
    var choices:[T]?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupCollectionView()
        
    }
    private func setupCollectionView(){
        self.clearsSelectionOnViewWillAppear = false
        self.collectionView.allowsMultipleSelection = selectionMode == .multiple
        // Register cell classes
        self.collectionView!.register(UINib.init(nibName: "ChoiceCollectionViewCell", bundle: nil), forCellWithReuseIdentifier:ChoiceCollectionViewCell.identifier)
        guard let layout  =  collectionViewLayout as? UICollectionViewFlowLayout else {return}
        layout.minimumInteritemSpacing = 6;
        layout.minimumLineSpacing = 5
        let itemDim = (collectionView.bounds.width / 3) -  4
        layout.itemSize =   CGSize(width:itemDim, height:  itemDim)
    }
    
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return choices?.count ?? 0
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ChoiceCollectionViewCell.identifier, for: indexPath) as? ChoiceCollectionViewCell else {return UICollectionViewCell()}
        cell.backgroundColor = .green
        cell.title = choices?[indexPath.row].title ?? ""
        
        return cell
    }
    
    // MARK: UICollectionViewDelegate
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard let item = choices?[indexPath.row] else {return}
        selectCell(indexPath,select: !item.isSelected)
        choices?[indexPath.row].isSelected.toggle()
    }
    private func selectCell(_ indexPath:IndexPath,select:Bool = true){
        guard let cell = collectionView.cellForItem(at: indexPath) else {return}
        cell.backgroundColor  = select ? .gray : .white
        UIView.animate(withDuration: 0.1,
                       animations: {
                        cell.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
        },
                       completion: { _ in
                        UIView.animate(withDuration: 0.1) {
                            cell.transform = CGAffineTransform.identity
                        }
        })
        
    }
    
}
extension ChoiceCollectionViewController: Choosable {
    typealias Item = T
    
    func getChoices() -> [T] {
        return choices?.filter{$0.isSelected} ?? []
    }
    
}
