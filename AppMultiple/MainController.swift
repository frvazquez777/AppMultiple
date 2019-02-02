//
//  MainController.swift
//  AppMultiple
//
//  Created by Fredy Roman Vazquez Geronio on 2/1/19.
//  Copyright © 2019 Fredy Roman Vazquez Geronimo. All rights reserved.
//

import UIKit

class MainController: UITableViewController {

    var arrayClass = ["View", "Mazda", "TableView", "WebService", "AppDictionary"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("AppMultiple Init")
  
    }


    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrayClass.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MainIdentifier", for: indexPath)
        // Configure the cell...
        let indexMenu = indexPath.row
        let nameMenu = arrayClass[indexPath.row]
        cell.textLabel?.text = "\(indexMenu + 1) - \(nameMenu)"
        return cell
    }
 
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let idOption = indexPath.row
        let nameOption = arrayClass[idOption]
        let segueName = "Segue\(nameOption)Controller"
        if getSegueValidation(idOption) {
            self.performSegue(withIdentifier: segueName, sender: idOption)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let segueIdentifier = segue.identifier
        let idOption = sender as! Int
        
        switch idOption {
        case 0:
            let segueViewController: ViewController = segue.destination as! ViewController
            segueViewController.valueReceived = segueIdentifier
            break
        case 1:
            let _ : MazdaController = segue.destination as! MazdaController
            break
        case 2:
            let _ : TableViewController = segue.destination as! TableViewController
            break
        case 3:
            let _ : WebServiceController = segue.destination as! WebServiceController
            break
        case 4:
            let _ : AppDictionaryController = segue.destination as! AppDictionaryController
            break
        default:
            break
        }
    }

    func getSegueValidation(_ segueValue: Int) -> Bool {
        var validation = false;
        switch segueValue {
        case 0, 1, 2, 3, 4:
            validation = true
            break
        default:
            validation = false
            break
        }
        
        return validation
    }

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
