//
//  detailviewViewController.swift
//  Landmark Book
//
//  Created by Omer  on 8.12.2018.
//  Copyright © 2018 Omer Varoglu. All rights reserved.
//

import UIKit

class detailviewViewController: UIViewController {
    @IBOutlet weak var textLabel: UILabel!
    
    var landmarkNames = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        textLabel.text = landmarkNames
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
