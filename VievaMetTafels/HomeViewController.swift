//
//  ViewController.swift
//  VievaMetTafels
//
//  Created by Vivian on 19/09/2018.
//  Copyright © 2018 Vivian Nguyen. All rights reserved.
//

import Foundation
import UIKit
    
    class HomeViewController: UIViewController {
        
        ////////HIERONDER ENTER-BUTTON
        
        @IBAction func EnterToSecondViewController(_ sender: Any) {
            self.performSegue(withIdentifier: "SecondViewControllerSegue", sender: self)
        }
        
        //////HIERONDER DATEPICKERS EN LABELS
        
        @IBOutlet weak var LabelDate: UILabel?
        
        @IBOutlet weak var DatePicker: UIDatePicker?
        
        @IBOutlet weak var LabelTime: UILabel?
        
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            DatePicker?.datePickerMode = .dateAndTime
            DatePicker?.minimumDate = Date.calculateDate(day: 1, month: 1, year: 2018, hour: 0, minute: 0)
            DatePicker?.maximumDate = Date.calculateDate(day: 31, month: 1, year: 2050, hour: 0, minute: 0 )
        }
        
        @IBAction func valueChanged(_ sender: UIDatePicker, forEvent event: UIEvent) {
            
            LabelDate?.text = "Day: \(sender.date.getDayMonthYearHourMinuteSecond().day) / \(sender.date.getDayMonthYearHourMinuteSecond().month)"
            LabelTime?.text = "Time: \(sender.date.getDayMonthYearHourMinuteSecond().hour) : \(sender.date.getDayMonthYearHourMinuteSecond().minute)"
            
        }
        
    }
    



