//
//  ViewPdfController.swift
//  AppMultiple
//
//  Created by Fredy Roman Vazquez Geronio on 2/1/19.
//  Copyright © 2019 Fredy Roman Vazquez Geronimo. All rights reserved.
//

import UIKit
import WebKit

class ViewPdfController: UIViewController, WKNavigationDelegate  {

    @IBOutlet var ViewWebPdf: WKWebView!
    var namePdf: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("ViewPdfController Init")
        viewPDF()
    }
    
    func viewPDF() {
        //Conseguir la direccion del pdf
        print(namePdf!)
        let directionPDF = URL(fileURLWithPath: Bundle.main.path(forResource: namePdf?.lowercased(), ofType: "pdf", inDirectory:"PDF")!)
        //Transformar el archivo para mostrar
        let datePdf = try? Data(contentsOf: directionPDF)
        //let request = URLRequest(url: directionPDF)
        
        //mostrar archivo PDF - WebView
        ViewWebPdf.load(datePdf!, mimeType: "application/pdf", characterEncodingName: "utf-8", baseURL: directionPDF)
        //ViewWebPdf.load(request)
    }

}
