//
//  MainVC.swift
//  MadLibs
//
//  Created by Amanda Demetrio on 9/10/18.
//  Copyright © 2018 Amanda Demetrio. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    var adjective: String? = nil
    var verb1: String? = nil
    var verb2: String? = nil
    var noun: String? = nil
    
    @IBAction func writeButtonPressed(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "FirstToSecondSegue", sender: nil)
    }
    
    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
            textLabel.text = "..."
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if adjective == nil {
            textLabel.text = "..."
        }
        else {
            textLabel.text = "We are \(verb1!) a \(adjective!) \(noun!) right now. Later, we will \(verb2!)"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func unwindToMainVC (segue:UIStoryboardSegue) { }


}

