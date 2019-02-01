//
//  TableViewController.swift
//  AppMultiple
//
//  Created by Fredy Roman Vazquez Geronio on 2/1/19.
//  Copyright © 2019 Fredy Roman Vazquez Geronimo. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    var arrayPDF = ["PDF1", "PDF2", "PDF3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("TableViewController Init")
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrayPDF.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellPdf", for: indexPath)

        // Configure the cell...
        cell.textLabel?.text = arrayPDF[indexPath.row]
        cell.imageView!.image = UIImage(named: "Libro.jpg")
        return cell
    }
    

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            arrayPDF.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            tableView.reloadData()
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "SegueViewPdf", sender: indexPath.row)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let idOption = sender as! Int
        
        let segueViewPdfController: ViewPdfController = segue.destination as! ViewPdfController
        segueViewPdfController.namePdf = arrayPDF[idOption]
      
    }

}
