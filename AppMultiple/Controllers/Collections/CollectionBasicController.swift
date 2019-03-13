//
//  CollectionBasicController.swift
//  AppMultiple
//
//  Created by Fredy Roman Vazquez Geronio on 2/12/19.
//  Copyright © 2019 Fredy Roman Vazquez Geronimo. All rights reserved.
//

import UIKit

class CollectionBasicController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {


    @IBOutlet weak var colorCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("CollectionBasic Init")
        setUpCollectionView(collection: colorCollectionView)
        
    }
    
    func setUpCollectionView(collection: UICollectionView) {
        collection.delegate = self
        collection.dataSource = self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 51
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CellColorCollection", for: indexPath)
        let red = CGFloat(Int(arc4random_uniform(155)) + 100)
        let green = CGFloat(Int(arc4random_uniform(155)) + 100)
        let blue = CGFloat(Int(arc4random_uniform(155)) + 100)
        
        cell.backgroundColor =  UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1.0)
        
        return cell
    }
    
}
