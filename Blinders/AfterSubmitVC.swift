//
//  AfterSubmitVC.swift
//  Blinders
//
//  Created by Evan on 3/14/16.
//  Copyright © 2016 Evan. All rights reserved.
//

import UIKit

class AfterSubmitVC: UIViewController {

    @IBOutlet weak var goOnDateButton: UIButton!
    
    @IBOutlet weak var backToHomeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        goOnDateButton.layer.cornerRadius = CR
        goOnDateButton.clipsToBounds = true
        backToHomeButton.layer.cornerRadius = CR
        backToHomeButton.clipsToBounds = true
    
    }
}
