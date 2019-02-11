//
//  BusinessCardCodeController.swift
//  AppMultiple
//
//  Created by Fredy Roman Vazquez Geronio on 2/7/19.
//  Copyright © 2019 Fredy Roman Vazquez Geronimo. All rights reserved.
//

import UIKit

class BusinessCardCodeController: UIViewController {

    let imagenPerfil  = UIImageView()
    var constraints = [NSLayoutConstraint]()
    let nameLabel = UILabel()
    let emailLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("\"BusinessCardCode Init\"")
        
        createImage(nameImage: "lion")
        getName(name: "LION RED")
        crearEmailyAgregarAutolayout(email: "crazzy-rock@live.com.mx")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        NSLayoutConstraint.activate(constraints)
    }
    
    func createImage(nameImage :  String) {

        imagenPerfil.translatesAutoresizingMaskIntoConstraints = false
        imagenPerfil.image = UIImage(named: nameImage)
        imagenPerfil.contentMode = UIView.ContentMode.scaleAspectFill
        imagenPerfil.clipsToBounds = true
        self.view.addSubview(imagenPerfil)
        
        let centerXConstraints = imagenPerfil.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0)
        let centerYConstraints = imagenPerfil.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: 0)
        
        let widthConstraints = imagenPerfil.widthAnchor.constraint(equalToConstant: 175)
        let heightConstraints = imagenPerfil.heightAnchor.constraint(equalToConstant: 175)

        imagenPerfil.layer.cornerRadius = widthConstraints.constant / 2.0
        constraints.append(centerXConstraints)
        constraints.append(centerYConstraints)
        constraints.append(widthConstraints)
        constraints.append(heightConstraints)
        
    }
    
    func getName(name: String) {
        nameLabel.text = name
        nameLabel.textColor = UIColor.black
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.textAlignment = NSTextAlignment.center
        nameLabel.font = UIFont(name: "Avenir Next", size: 20)
        self.view.addSubview(nameLabel)
        
        let leadingContraints = nameLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0)
        let trailingConstraints = nameLabel.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0)
        let topConstraints = nameLabel.topAnchor.constraint(equalTo: self.view.topAnchor, constant: -110)
        let heigntConstraints = nameLabel.heightAnchor.constraint(equalTo: self.view.heightAnchor, constant: 25)
        
        constraints.append(leadingContraints)
        constraints.append(trailingConstraints)
        constraints.append(topConstraints)
        constraints.append(heigntConstraints)
        
    }
    
    func crearEmailyAgregarAutolayout (email : String) {
        
        emailLabel.text = email
        emailLabel.textColor = UIColor.black
        emailLabel.translatesAutoresizingMaskIntoConstraints = false
        emailLabel.textAlignment = NSTextAlignment.right
        emailLabel.font = UIFont(name: "Avenir Next", size: 17)
        self.view.addSubview(emailLabel)
        
        let leadingConstraint = emailLabel.leadingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 8)
        let trailingConstraint = emailLabel.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 8)
        
        let heightConstraint = emailLabel.heightAnchor.constraint(equalToConstant: 20)
        let bottomConstraint = emailLabel.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0)
        
        constraints.append(leadingConstraint)
        constraints.append(trailingConstraint)
        constraints.append(heightConstraint)
        constraints.append(bottomConstraint)
        
    }
}
