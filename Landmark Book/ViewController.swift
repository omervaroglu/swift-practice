//
//  ViewController.swift
//  Landmark Book
//
//  Created by Omer  on 7.12.2018.
//  Copyright © 2018 Omer Varoglu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {


    @IBOutlet weak var tableView: UITableView!
    
    var landmarkNames = [String]()
    var selectedLandmark = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        
        landmarkNames.append("St. Petersburg")
        landmarkNames.append("Rio de Jenerio")
        landmarkNames.append("Istanbul")
        
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return landmarkNames.count
    }
    
    // delete butonunu ekledigimiz yer
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
       
        if editingStyle == .delete {
            landmarkNames.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
        }
    }
    
    //bilgiyi diger sayfaya gonderdigimiz yer
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetails" {
            let destinationVC = segue.destination as! detailviewViewController
            destinationVC.landmarkNames = selectedLandmark
        }
    }
    
    // rowdaki objeye tiklandiginda yapilacaklar.
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        selectedLandmark = landmarkNames[indexPath.row]
        performSegue(withIdentifier: "toDetails", sender: nil)
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = landmarkNames[indexPath.row]
        return cell
    }
    
}

