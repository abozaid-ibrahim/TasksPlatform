//
//  ChoiceCollectionViewTests.swift
//  MohsbaaTests
//
//  Created by abuzeid on 3/25/19.
//  Copyright © 2019 abuzeid. All rights reserved.
//

import XCTest
@testable import Mohsbaa

class ChoiceCollectionViewTests: XCTestCase {
    private var choiceController: ChoiceCollectionViewController<ChoiceItem>?
    private var choices: [ChoiceItem]?
    override func setUp() {
        choiceController = ChoiceCollectionViewController<ChoiceItem>(collectionViewLayout: UICollectionViewFlowLayout())
    }
    
    override func tearDown() {
        choiceController = nil
        
    }
    
    func test_getChoosedItems() {
        let strs = [ChoiceItem(id: 22, isSelected: false, title: "adsf", background: nil),ChoiceItem(id: 22, isSelected: true, title: "adsf", background: nil),ChoiceItem(id: 22, isSelected: false, title: "adsf", background: nil),ChoiceItem(id: 22, isSelected: false, title: "adsf", background: nil),ChoiceItem(id: 22, isSelected: true, title: "adsf", background: nil)]
        
        
        choiceController?.choices = strs
        XCTAssertEqual(choiceController!.getChoices().count, 2)
    }
  
    func test_getChoosedItems_ByAction() {
        let strs = [ChoiceItem(id: 22, isSelected: false, title: "adsf", background: nil),ChoiceItem(id: 22, isSelected: false, title: "adsf", background: nil),ChoiceItem(id: 22, isSelected: false, title: "adsf", background: nil),ChoiceItem(id: 22, isSelected: false, title: "adsf", background: nil),ChoiceItem(id: 22, isSelected: false, title: "adsf", background: nil)]
        
        
        choiceController?.choices = strs
        choiceController?.collectionView(choiceController!.collectionView, didSelectItemAt: IndexPath(item: 0, section: 0))
        
        XCTAssertEqual(choiceController!.getChoices().count, 1)
    }
    
    func test_getChoosedItems_DidDeselectItem() {
        let strs = [ChoiceItem(id: 22, isSelected: false, title: "adsf", background: nil),ChoiceItem(id: 22, isSelected: false, title: "adsf", background: nil),ChoiceItem(id: 22, isSelected: false, title: "adsf", background: nil),ChoiceItem(id: 22, isSelected: false, title: "adsf", background: nil),ChoiceItem(id: 22, isSelected: false, title: "adsf", background: nil)]
        
        
        choiceController?.choices = strs
        choiceController?.collectionView(choiceController!.collectionView, didSelectItemAt: IndexPath(item: 0, section: 0))
        
        choiceController?.collectionView(choiceController!.collectionView, didSelectItemAt: IndexPath(item: 0, section: 0))

        XCTAssertEqual(choiceController!.getChoices().count, 0)
    }
    
}
