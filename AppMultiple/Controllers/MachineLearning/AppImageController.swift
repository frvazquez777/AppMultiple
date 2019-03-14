//
//  AppImageController.swift
//  AppMultiple
//
//  Created by Fredy Roman Vazquez Geronio on 3/14/19.
//  Copyright © 2019 Fredy Roman Vazquez Geronimo. All rights reserved.
//

import UIKit
import Vision
import CoreML

class AppImageController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var dataImage: UIImageView!
    @IBOutlet weak var dataLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Init MachineLearning - App Image")
        dectarImagenes()
    }
    
    //Acciones botones
    @IBAction func tomarFoto(_ sender: Any) {
        
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = .camera
            imagePicker.allowsEditing = true
            self.present(imagePicker, animated: true, completion: nil)
        } else {
            print("No se pudo obtener el acceso a la camara.")
           // fatalError("Error Inesperado")
        }
    }
    
    @IBAction func seleccionarFotoo(_ sender: Any) {
        
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary) {
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = .photoLibrary
            imagePicker.allowsEditing = true
            self.present(imagePicker, animated: true, completion: nil)
        } else {
            print("No se pudo obtener el acceso a la libreria de imagenes.")
        }
    }
    
    //metodo detectar imagen
    func dectarImagenes () {
        dataLabel.text = "Cargando ..."
        
        guard let model = try? VNCoreMLModel(for: GoogLeNetPlaces().model)
            else {
                print("Ocurrior un error, no se pudo crear el modelo")
                return
        }
       
        let peticion = VNCoreMLRequest(model: model) { (request, error) in
            guard let resultados = request.results as? [VNClassificationObservation],
                let primerResultado = resultados.first else {
                    print("No se encontro resultados")
                    return
            }
            DispatchQueue.main.async {
                self.dataLabel.text = "\(primerResultado.identifier)"
            }
        }
        
        guard let ciimageForUse = CIImage(image: self.dataImage.image!) else {
            print("No se puede crear la Imagen CIImage")
            return
        }
        
        //Correr peticion
        let handler = VNImageRequestHandler(ciImage: ciimageForUse)
        DispatchQueue.global().async {
            do {
                try handler.perform([peticion])
            } catch {
                print(error.localizedDescription)
            }
        }
    }
    
    
    //funcion del sistemas
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let pickerImage = info[.originalImage] as? UIImage {
            //self.dataImage.contentMode = .scaleAspectFill // por si queremos el cambio de tipo de pantalla
            self.dataImage.image = pickerImage
        }
        
        picker.dismiss(animated: true, completion: nil)
        dectarImagenes()
    }
    
}
