//
//  DatePickerViewController.swift
//  DatePicker
//
//  Created by Mac on 29/3/21.
//  Copyright © 2021 Mac. All rights reserved.
//

import UIKit

protocol DateUtilsListener {
    func setDate(date : String)
}

class DatePickerViewController: UIViewController {

    var listener : DateUtilsListener?

    @IBOutlet weak var lblTitle: UILabel!
    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        datePicker.datePickerMode = .date
        print(datePicker.date)
       
    }
    
    func setListener(lister : DateUtilsListener)  {
        self.listener = lister
    }
    
    var formatedDate : String {
        get{
            let dateformater = DateFormatter()
            dateformater.dateStyle = .medium
            return dateformater.string(from: datePicker.date)
        }
    }
    
    @IBAction func onSave(_ sender: Any) {
        print(formatedDate)
        
        self.listener?.setDate(date: formatedDate)
      
        dismiss(animated: true)
    }
    

}
