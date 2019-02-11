//
//  CodeContraintsController.swift
//  AppMultiple
//
//  Created by Fredy Roman Vazquez Geronio on 2/6/19.
//  Copyright © 2019 Fredy Roman Vazquez Geronimo. All rights reserved.
//

import UIKit

class CodeContraintsController: UIViewController {

    var topLeftLabel = UILabel()
    var topRightLabel = UILabel()
    var bottomLeftLabel = UILabel()
    var bottomRightLabel = UILabel()
    
    var contraints = [NSLayoutConstraint]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("CodeContraints Init")
    
        getTopLeftLabel()
        getTopRightLabel()
        getBottomLeftLabel()
        getBottomRightLabel()
        
        NSLayoutConstraint.activate(contraints)

    }
    
    func getTopLeftLabel() {
        /*\//opcion 1
         topLeftLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
         topLeftLabel.center = CGPoint(x: 160, y: 285)
         topLeftLabel.textAlignment = .center
         topLeftLabel.text = "TopLeft"
         topLeftLabel.backgroundColor = UIColor.orange
         topLeftLabel.textColor = UIColor.blue
         
         self.view.addSubview(topLeftLabel)
         */
        topLeftLabel.backgroundColor = UIColor.orange
        topLeftLabel.text = "TopLeft"
        topLeftLabel.textColor = UIColor.black
        topLeftLabel.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(topLeftLabel)
        
        let topContraints = topLeftLabel.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 70)
        let leadingContraints = topLeftLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20)
        let widthContraints = topLeftLabel.widthAnchor.constraint(equalToConstant: 70)
        let heightContraints = topLeftLabel.heightAnchor.constraint(equalToConstant: 15)
        
        contraints.append(contentsOf: [topContraints, leadingContraints, widthContraints, heightContraints])
        
    }
    
    func getTopRightLabel() {
   
        topRightLabel.backgroundColor = UIColor.orange
        topRightLabel.text = "TopRight"
        topRightLabel.textColor = UIColor.black
        topRightLabel.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(topRightLabel)
        
        let topContraints = topRightLabel.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 70)
        let leadingContraints = topRightLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 240)
        let widthContraints = topRightLabel.widthAnchor.constraint(equalToConstant: 80)
        let heightContraints = topRightLabel.heightAnchor.constraint(equalToConstant: 15)
        
        contraints.append(contentsOf: [topContraints, leadingContraints, widthContraints, heightContraints])
        
    }
    
    func getBottomLeftLabel() {
        
        bottomLeftLabel.backgroundColor = UIColor.orange
        bottomLeftLabel.text = "BottomLeft"
        bottomLeftLabel.textColor = UIColor.black
        bottomLeftLabel.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(bottomLeftLabel)
        
        let bottomContraints = bottomLeftLabel.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0)
        let leadingContraints = bottomLeftLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20)
        let widthContraints = bottomLeftLabel.widthAnchor.constraint(equalToConstant: 110)
        let heightContraints = bottomLeftLabel.heightAnchor.constraint(equalToConstant: 15)
        
        contraints.append(contentsOf: [bottomContraints, leadingContraints, widthContraints, heightContraints])
        
    }
    
    func getBottomRightLabel() {
        
        bottomRightLabel.backgroundColor = UIColor.orange
        bottomRightLabel.text = "BottomRight"
        bottomRightLabel.textColor = UIColor.black
        bottomRightLabel.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(bottomRightLabel)
        
        let bottomContraints = bottomRightLabel.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0)
        let leadingContraints = bottomRightLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 240)
        let widthContraints = bottomRightLabel.widthAnchor.constraint(equalToConstant: 110)
        let heightContraints = bottomRightLabel.heightAnchor.constraint(equalToConstant: 15)
        
        contraints.append(contentsOf: [bottomContraints, leadingContraints, widthContraints, heightContraints])
    }
    
}
