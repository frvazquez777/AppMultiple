//
//  AutoLayoutController.swift
//  AppMultiple
//
//  Created by Fredy Roman Vazquez Geronio on 2/5/19.
//  Copyright © 2019 Fredy Roman Vazquez Geronimo. All rights reserved.
//

import UIKit

class AutoLayoutController: UITableViewController {

    var arrayAutoLayout = ["Labels", "Constraints"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("AutoLayout Init")
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayAutoLayout.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellAutoLayout", for: indexPath)
        cell.textLabel?.text = arrayAutoLayout[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let idOption = indexPath.row
        let nameSegue = "SegueAutoLayout\(arrayAutoLayout[idOption])"
        print("SegueAutoLayoutConstraints - \(nameSegue)")
        self.performSegue(withIdentifier: nameSegue, sender: idOption)
    }
    
}
