//
//  MainController.swift
//  AppMultiple
//
//  Created by Fredy Roman Vazquez Geronio on 2/11/19.
//  Copyright © 2019 Fredy Roman Vazquez Geronimo. All rights reserved.
//

import UIKit

class MainCollectionController: UITableViewController {
    
    var arrayCollections = ["CollectionBasic", "CollectionsPhoto"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("MainCollection Init")
    }


    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrayCollections.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellCollection", for: indexPath)

        // Configure the cell...
        cell.textLabel?.text = arrayCollections[indexPath.row]
        return cell
    }
 
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let idOption = indexPath.row 
        let nameSegue = "Segue\(arrayCollections[idOption])"
        print("Segue : \(nameSegue)")
        self.performSegue(withIdentifier: nameSegue, sender: indexPath.row)
    }


}
