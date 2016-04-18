//
//  SubmitAnExpVC.swift
//  Blinders
//
//  Created by Evan on 3/14/16.
//  Copyright © 2016 Evan. All rights reserved.
//

import UIKit

class SubmitAnExpVC: UIViewController, UITextFieldDelegate, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var addressTextField: UITextField!
    
    @IBOutlet weak var webAddressTextField: UITextField!
    
    @IBOutlet weak var costPicker: UIPickerView!
    
    @IBOutlet weak var categoryTextField: UIPickerView!
    
    @IBOutlet weak var submitButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addressTextField.delegate = self
        webAddressTextField.delegate = self
        
        submitButton.layer.cornerRadius = CR
        submitButton.clipsToBounds = true
        
        costPicker.delegate = self
        costPicker.dataSource = self
        categoryTextField.delegate = self
        categoryTextField.dataSource = self 
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView == categoryTextField {
            return kindOfActivityArray.count
        } else {
            return budgetArray.count
        }
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView == categoryTextField {
            return kindOfActivityArray[row]
        } else {
            return budgetArray[row]
        }
    }

    

}
