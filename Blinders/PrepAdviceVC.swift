//
//  PrepAdviceVC.swift
//  Blinders
//
//  Created by Evan on 3/18/16.
//  Copyright © 2016 Evan. All rights reserved.
//

import UIKit

class PrepAdviceVC: UIViewController {
   

    @IBOutlet weak var getDirectionsButton: UIButton!
    @IBOutlet weak var youllNeedLabel: UILabel!
    @IBOutlet weak var attireLabel: UILabel!
    @IBOutlet weak var driveTimeLabel: UILabel!
    @IBOutlet weak var otherInfoLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getDirectionsButton.layer.cornerRadius = CR
        getDirectionsButton.clipsToBounds = true
        
        
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(true)
        
        youllNeedLabel.text = selectedDate["whatYouNeed"]
        attireLabel.text = selectedDate["attire"]
        driveTimeLabel.text = selectedDate["driveTime"]
        otherInfoLabel.text = selectedDate["other"]
    }
    


    
    
    
   
    

    
    
    
    
    
    
    
    

    

}
