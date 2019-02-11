//
//  WebServiceController.swift
//  AppMultiple
//
//  Created by Fredy Roman Vazquez Geronio on 2/1/19.
//  Copyright © 2019 Fredy Roman Vazquez Geronimo. All rights reserved.
//

import UIKit
import WebKit

class WebServiceController: UIViewController {

    @IBOutlet weak var webService: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("WebService Init")
        webServiceUrl()
        
    }
    
    func webServiceUrl() {
        let ws = URL(string: "https://www.youtube.com/")
        let request = URLRequest(url: ws!)
        
        webService.load(request)
        
    }


}
