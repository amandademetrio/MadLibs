//
//  SecondVC.swift
//  MadLibs
//
//  Created by Amanda Demetrio on 9/11/18.
//  Copyright © 2018 Amanda Demetrio. All rights reserved.
//

import UIKit

class SecondVC: UIViewController {
    
    @IBOutlet weak var adjectiveTextField: UITextField!
    @IBOutlet weak var verbtextField1: UITextField!
    @IBOutlet weak var verbtextField2: UITextField!
    @IBOutlet weak var nounTextField: UITextField!
    
    @IBAction func submitButtonPressed(_ sender: UIButton) {
        //print("submit button pressed")
        performSegue(withIdentifier: "unwindToMainVC", sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        adjectiveTextField.placeholder = "adjective"
        verbtextField1.placeholder = "verb"
        verbtextField2.placeholder = "verb"
        nounTextField.placeholder = "noun"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! MainVC
        destination.adjective = adjectiveTextField.text
        destination.verb1 = verbtextField1.text
        destination.verb2 = verbtextField2.text
        destination.noun = nounTextField.text
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
