//
//  ViewController.swift
//  DatePicker
//
//  Created by Mac on 29/3/21.
//  Copyright © 2021 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController,DateUtilsListener {
    func setDate(date: String) {
//        print("Date \(date)")
        
        dateText.text? = date
        
        
    }
    
 
//    var datePcikere : DatePickerViewController = DatePickerViewController()
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


    @IBOutlet weak var dateText: UITextField!
    
    
    @IBAction func datePicker(_ sender: Any) {
       
//        let date : DatePickerViewController = DatePickerViewController()
//        date.setListener(lister: self)
        performSegue(withIdentifier: "date_segue", sender: self)
     
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "date_segue" {
            let destination = segue.destination as! DatePickerViewController
            
            destination.setListener(lister: self)
            
        }
    }
}




