//
//  TafelsViewController.swift
//  VievaMetTafels
//
//  Created by Vivian on 19/09/2018.
//  Copyright © 2018 Vivian Nguyen. All rights reserved.
//

import Foundation
import UIKit

    class TafelsViewController: UIViewController {
    
        @IBAction func BackToSecondViewController(_ sender: Any) {
            self.performSegue(withIdentifier: "SecondViewControllerVanuit3Segue", sender: self)
        }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
