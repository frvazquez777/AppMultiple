//
//  ViewController.swift
//  AppMultiple
//
//  Created by Fredy Roman Vazquez Geronio on 2/1/19.
//  Copyright © 2019 Fredy Roman Vazquez Geronimo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelValueName: UILabel!
    var valueReceived: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("ViewController Init")
        labelValueName.text = valueReceived!
    }

}
