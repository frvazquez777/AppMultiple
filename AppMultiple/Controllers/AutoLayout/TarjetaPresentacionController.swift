//
//  TarjetaPresentacionController.swift
//  AppMultiple
//
//  Created by Fredy Roman Vazquez Geronio on 2/7/19.
//  Copyright © 2019 Fredy Roman Vazquez Geronimo. All rights reserved.
//

import UIKit

class TarjetaPresentacionController: UIViewController {

    @IBOutlet weak var pictureView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("TarjetaPresentacion Init")
        getDesign()
    }
    
    func getDesign() {
        pictureView.layer.cornerRadius = pictureView.bounds.size.width / 2.0
        pictureView.clipsToBounds = true
    }
    
}
