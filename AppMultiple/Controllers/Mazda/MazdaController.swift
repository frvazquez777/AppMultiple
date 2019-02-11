//
//  MazdaController.swift
//  AppMultiple
//
//  Created by Fredy Roman Vazquez Geronio on 2/1/19.
//  Copyright © 2019 Fredy Roman Vazquez Geronimo. All rights reserved.
//

import UIKit

class MazdaController: UIViewController {

    @IBOutlet weak var labelInfoMazda: UILabel!
    
    var mazdaModel: Mazda3?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("MazdaController Init")
    }
    
    @IBAction func CrearMazda(_ sender: UIButton) {
        labelInfoMazda.text = "Creacion de Mazda"
        mazdaModel = Mazda3()
    }
    
    @IBAction func PropiedadesMazda(_ sender: UIButton) {
        var propiedades = "Propiedades Mazda \n\n"

        if mazdaModel != nil {
            propiedades += "El Automovil Mazda 3 es tamaño \(mazdaModel!.siza), tiene \(mazdaModel!.numberPoor) puertas, su color es \(mazdaModel!.color), su precio es de \(mazdaModel!.price) MXN y se encuenta al \(mazdaModel!.loadPercentage) % de cargar"
        } else {
            propiedades += "Es necesario Crear un Objecto Mazda"
        }
        
        labelInfoMazda.text = propiedades
    }
    
    @IBAction func EncenderMazda(_ sender: UIButton) {
        var accion = "Encender Mazda\n\n"
        if mazdaModel != nil {
            accion += mazdaModel!.encender()
        } else {
            accion += "No se puede enceder, es necesario crear un objecto Mazda"
        }
        labelInfoMazda.text = accion
    }
    
    @IBAction func AcelerarMazda(_ sender: UIButton) {
        var accion = "Acelerar Mazda\n\n"
        if mazdaModel != nil {
            accion += mazdaModel!.acelerar()
        } else {
            accion += "No se puede Acelerar, es necesario crear un objecto Mazda"
        }
        labelInfoMazda.text = accion
    }
    
    @IBAction func RecargarMazda(_ sender: Any) {
        var accion = "Recargar Mazda\n\n"
        if mazdaModel != nil {
            accion += "Cargar al \(mazdaModel!.recargar()) %"
        } else {
            accion += "No se puedido recargar, es necesario crear un objecto Mazda"
        }
        labelInfoMazda.text = accion
    }
}
