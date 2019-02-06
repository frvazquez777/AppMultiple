//
//  AutoLayoutViewController.swift
//  AppMultiple
//
//  Created by Fredy Roman Vazquez Geronio on 2/5/19.
//  Copyright © 2019 Fredy Roman Vazquez Geronimo. All rights reserved.
//

import UIKit

class AutoLayoutViewController: UIViewController {

    @IBOutlet weak var orangeView: UIView!
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var bottomRedView: NSLayoutConstraint!
    
    var constraintsValues = [NSLayoutConstraint]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        orangeView.translatesAutoresizingMaskIntoConstraints = false
        greenView.translatesAutoresizingMaskIntoConstraints = false
        
        setAutoLayout()
        setAutoDesign()
        
    }

    
    func setAutoDesign() {
        let widthConstrains = greenView.widthAnchor.constraint(equalToConstant: 200)
        let heightConstrains = greenView.heightAnchor.constraint(equalToConstant: 200)
        let centerXConstraints = greenView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0)
        let centerYConstraints = greenView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: 0)
        constraintsValues.append(contentsOf: [widthConstrains, heightConstrains, centerXConstraints, centerYConstraints])
        
        NSLayoutConstraint.activate(constraintsValues)
    }
    
    func setAutoLayout() {
        
        let leadingCOnstraints = orangeView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 100)
        let trailingConstraints = orangeView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -100)
        let topConstraints = orangeView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 100)
        let bottomConstraints = orangeView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -100)
        
        constraintsValues.append(contentsOf: [leadingCOnstraints, trailingConstraints, topConstraints, bottomConstraints])
        
        UIView.animate(withDuration: 7.0) {
            NSLayoutConstraint.activate(self.constraintsValues)
            self.bottomRedView.constant = 150
            self.view.layoutIfNeeded()
        }
    }
    
}
