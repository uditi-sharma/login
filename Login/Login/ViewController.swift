//
//  ViewController.swift
//  Login
//
//  Created by Uditi Sharma on 16/07/2021.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        invalidTextDisplay.alpha = 0
        
    }
    
    @IBOutlet weak var invalidTextDisplay: UILabel!
    @IBOutlet weak var enterEmailTextField: UITextField!
    
    @IBAction func nextButtonClicked(_ sender: Any) {

        var textToValidate = enterEmailTextField.text
        if textToValidate!.isValidEmail {
            print("Do valid things")
            enterEmailTextField.layer.borderColor = UIColor.blue.cgColor
            enterEmailTextField.layer.borderWidth = 1.0
            invalidTextDisplay.alpha = 0
            
            
            
        } else {
            print("Do invalid things")
            invalidTextDisplay.alpha = 1
            enterEmailTextField.layer.borderColor = UIColor.red.cgColor
            enterEmailTextField.layer.borderWidth = 1.0
            
        }
        
    }
}


extension String {
    var isValidEmail: Bool {
        NSPredicate(format: "SELF MATCHES %@", "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}").evaluate(with: self)
    }
}
