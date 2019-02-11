//
//  AppDictionaryController.swift
//  AppMultiple
//
//  Created by Fredy Roman Vazquez Geronio on 2/1/19.
//  Copyright © 2019 Fredy Roman Vazquez Geronimo. All rights reserved.
//

import UIKit
import WebKit

class AppDictionaryController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    @IBOutlet weak var textField: UITextField!
    
    var word: String?
    
    let urlNotFound = "https://www.lifewire.com/thmb/OO7CD06NAdoIwv71DgUgBiTd4ps=/768x0/filters:no_upscale():max_bytes(150000):strip_icc()/shutterstock_325494917-5a68d8403418c600190a3e1f.jpg"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("AppDictionary Init")
        let url = "https://is3-ssl.mzstatic.com/image/thumb/Purple1/v4/05/b3/0e/05b30ef7-9d0d-a852-1a3e-291ee7154211/mzl.flhkoqvb.jpg/246x0w.jpg"
        getWebServiceImg(url)

    }

    @IBAction func getSearch(_ sender: UIButton) {
        if (textField.text?.isEmpty)! {
              getWebServiceImg(urlNotFound)
        } else {
            word = textField.text!
            var ws = "https://en.wikipedia.org/w/api.php?action=query&prop=extracts&format=json&titles=\(word!)"
            let encodedString = ws.addingPercentEncoding(withAllowedCharacters: .urlFragmentAllowed)
            ws = encodedString!
            getWebService(ws)

        }
    }
    
    func getWebService(_ urlWS: String) {
        let wiki =  URL(string: urlWS)
        let request = URLRequest(url: wiki!)
        
        let working = URLSession.shared.dataTask(with: request) {
            datas, reespone, error in
            
            if error != nil {
                print(error!)
            } else {
                do {
                    let json = try JSONSerialization.jsonObject(with: datas!, options: JSONSerialization.ReadingOptions.mutableContainers) as! [String: Any]
                    
                    let querySubJson = json["query"] as! [String: Any]
                    let pagesSubJson = querySubJson["pages"] as! [String: Any]
                    print(pagesSubJson)
                    //recuperar Key del JSON
                    let keyJson = pagesSubJson.keys
                    //obtener la primera key del json
                    let pageId = keyJson.first!
                    
                    let idSubJson = pagesSubJson[pageId] as! [String: Any]
                    if (idSubJson["extract"] != nil) {
                        let extractSubJson = idSubJson["extract"] as! String
                        DispatchQueue.main.sync {
                            execute: do {
                                self.webView.loadHTMLString(extractSubJson, baseURL: nil)
                            }
                        }
                    } else {
                        let wiki =  URL(string: self.urlNotFound)
                        let request = URLRequest(url: wiki!)
                        DispatchQueue.main.sync {
                            execute: do {
                                self.webView.load(request)
                            }
                        }
                    }
                    
                } catch {
                    print("El procesamiento del JSON tuvo un error.")
                }
            }
        }
        
        working.resume()
      //  webView.load(request)
    }
    
    
    func getWebServiceImg(_ urlWS: String) {
        let wiki =  URL(string: urlWS)
        let request = URLRequest(url: wiki!)        
        webView.load(request)
    }
}
