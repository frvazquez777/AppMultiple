//
//  MenuComidaController.swift
//  AppMultiple
//
//  Created by Fredy Roman Vazquez Geronio on 3/13/19.
//  Copyright © 2019 Fredy Roman Vazquez Geronimo. All rights reserved.
//

import UIKit

class MenuComidaController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout   {

    let listMenu = ["img1", "img2", "img3", "img4", "img5"]
    let namesMenu = ["Hamburguesa Combo", "Ensalada", "Panuchos", "Spagetti", "HotCakes"]
    
    @IBOutlet weak var menuConllectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        menuConllectionView.delegate = self
        menuConllectionView.dataSource = self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return listMenu.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "IdentifierMenu", for: indexPath) as! MenuCollectionViewCell
        cell.layer.cornerRadius = 40
        cell.imagenComidad.image = UIImage(named: listMenu[indexPath.row])
        cell.nombreComida.text = namesMenu[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let screenSize = UIScreen.main.bounds
        return CGSize(width: screenSize.width * 0.94, height: 220 )
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
    }
}
