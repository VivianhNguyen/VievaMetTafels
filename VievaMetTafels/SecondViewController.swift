//
//  SecondViewController.swift
//  VievaMetTafels
//
//  Created by Vivian on 19/09/2018.
//  Copyright © 2018 Vivian Nguyen. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
  ////Naar volgende viewcontroller
    @IBAction func BackToHomeViewController(_ sender: Any) {
        self.performSegue(withIdentifier: "HomeViewControllerSegue", sender: self)
        }
    
    @IBAction func EnterToTafelsViewController(_ sender: Any) {
     self.performSegue(withIdentifier: "TafelsViewControllerSegue", sender: self)
        }
    
//////// vul textfield in
    @IBOutlet weak var EMailTextField: UITextField!
    @IBOutlet weak var PhoneNumberTextField: UITextField!
    @IBOutlet weak var GuestTextField: UITextField!
    @IBOutlet weak var TextView: UITextView!
    @IBAction func EnterTafelsViewControllerV2(_ sender: Any) {
        TextView.text = "E-Mail: \(String(describing: EMailTextField.text))\nPhone Number: \(String(describing: PhoneNumberTextField.text))\nGuests: \(String(describing: GuestTextField.text))"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        EMailTextField.delegate = self
        PhoneNumberTextField.delegate = self
        GuestTextField.delegate = self
       
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            PhoneNumberTextField.resignFirstResponder()
            GuestTextField.resignFirstResponder() 
        }
    }


extension SecondViewController : UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
}
