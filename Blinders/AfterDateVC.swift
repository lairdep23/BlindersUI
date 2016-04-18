//
//  AfterDateVC.swift
//  Blinders
//
//  Created by Evan Laird on 4/2/16.
//  Copyright © 2016 Evan. All rights reserved.
//

import UIKit

class AfterDateVC: UIViewController, UITextFieldDelegate {
    
    let starFull = "StarFull"
    let starEmpty = "StarEmpty"

   
    @IBOutlet weak var firstStar: UIButton!
    
    @IBOutlet weak var secondStar: UIButton!

    @IBOutlet weak var thirdStar: UIButton!
    
    @IBOutlet weak var fourthStar: UIButton!
    
    @IBOutlet weak var fifthStar: UIButton!
    
    @IBOutlet weak var anotherDateButton: UIButton!
    
    @IBOutlet weak var homePageButton: UIButton!
    
    @IBOutlet weak var otherInfoTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        anotherDateButton.layer.cornerRadius = CR
        homePageButton.layer.cornerRadius = CR
        anotherDateButton.clipsToBounds = true
        homePageButton.clipsToBounds = true
        
        otherInfoTextField.delegate = self 
        
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func firstStarPressed(sender: AnyObject) {
        firstStar.setImage(UIImage(named: starFull)!, forState: .Normal)
        secondStar.setImage(UIImage(named: starEmpty)!, forState: .Normal)
        thirdStar.setImage(UIImage(named: starEmpty)!, forState: .Normal)
        fourthStar.setImage(UIImage(named: starEmpty)!, forState: .Normal)
        fifthStar.setImage(UIImage(named: starEmpty)!, forState: .Normal)
    }
    
    @IBAction func secondStarPressed(sender: AnyObject) {
        firstStar.setImage(UIImage(named: starFull)!, forState: .Normal)
        secondStar.setImage(UIImage(named: starFull)!, forState: .Normal)
        thirdStar.setImage(UIImage(named: starEmpty)!, forState: .Normal)
        fourthStar.setImage(UIImage(named: starEmpty)!, forState: .Normal)
        fifthStar.setImage(UIImage(named: starEmpty)!, forState: .Normal)
    }
    
    @IBAction func thirdStarPressed(sender: AnyObject) {
        firstStar.setImage(UIImage(named: starFull)!, forState: .Normal)
        secondStar.setImage(UIImage(named: starFull)!, forState: .Normal)
        thirdStar.setImage(UIImage(named: starFull)!, forState: .Normal)
        fourthStar.setImage(UIImage(named: starEmpty)!, forState: .Normal)
        fifthStar.setImage(UIImage(named: starEmpty)!, forState: .Normal)
    }
    
    @IBAction func fourthStarPressed(sender: AnyObject) {
        firstStar.setImage(UIImage(named: starFull)!, forState: .Normal)
        secondStar.setImage(UIImage(named: starFull)!, forState: .Normal)
        thirdStar.setImage(UIImage(named: starFull)!, forState: .Normal)
        fourthStar.setImage(UIImage(named: starFull)!, forState: .Normal)
        fifthStar.setImage(UIImage(named: starEmpty)!, forState: .Normal)
    }
    
    @IBAction func fifthStarPressed(sender: AnyObject) {
        firstStar.setImage(UIImage(named: starFull)!, forState: .Normal)
        secondStar.setImage(UIImage(named: starFull)!, forState: .Normal)
        thirdStar.setImage(UIImage(named: starFull)!, forState: .Normal)
        fourthStar.setImage(UIImage(named: starFull)!, forState: .Normal)
        fifthStar.setImage(UIImage(named: starFull)!, forState: .Normal)
    }
    
    
    
   
}
