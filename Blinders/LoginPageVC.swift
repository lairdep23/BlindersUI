//
//  LoginPageVC.swift
//  Blinders
//
//  Created by Evan on 3/13/16.
//  Copyright © 2016 Evan. All rights reserved.
//

import UIKit

class LoginPageVC: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var SignInButton: UIButton!
    @IBOutlet weak var EmailTextField: UITextField!
    @IBOutlet weak var PasswordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        SignInButton.layer.cornerRadius = CR
        SignInButton.clipsToBounds = true
        
        self.EmailTextField.delegate = self
        self.PasswordTextField.delegate = self
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false 
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        
    }
    
    @IBAction func emailLoginPressed(sender: AnyObject) {
        
        if let email = EmailTextField.text where email != "", let pwd = PasswordTextField.text where pwd != "" {
            
            DataService.ds.REF_BASE.authUser(email, password: pwd, withCompletionBlock: { error, authData in
                
                if error != nil {
                    print(error)
                    
                    if error.code == STATUS_ACCOUNT_NONEXIST {
                        DataService.ds.REF_BASE.createUser(email, password: pwd, withValueCompletionBlock: { error, result in
                            
                            if error != nil {
                                self.showErrorAlert("Could not create accoun", msg: "Try again later")
                            } else {
                            
                                NSUserDefaults.standardUserDefaults().setValue(result[KEY_UID], forKey: KEY_UID)
                                DataService.ds.REF_BASE.authUser(email, password: pwd, withCompletionBlock: nil)
                                
                                DataService.ds.REF_BASE.authUser(email, password: pwd, withCompletionBlock: { err, authData in
                                    
                                    let user = ["provider": authData.provider!]
                                    DataService.ds.createFirebaseUser(authData.uid, user: user)
                                    })
                                self.performSegueWithIdentifier(SEGUE_EMAIL_LOG_IN, sender: nil)
                                }
                                
                            })
                    } else if error.code == STATUS_INVALID_EMAIL {
                        self.showErrorAlert("Invalid email", msg: "Please check to make sure your email is correct")
                    } else if error.code == STATUS_INVALID_PASSWORD {
                        self.showErrorAlert("Invalid password", msg: "Please check to make sure your password is correct")
                    }
                } else {
                    self.performSegueWithIdentifier(SEGUE_EMAIL_LOG_IN, sender: nil)
                }
                
            })
        } else {
            showErrorAlert("Email and Password Required", msg: "You must enter an email and password")
        }
    }
    
    func showErrorAlert(title: String, msg: String) {
        let alert = UIAlertController(title: title, message: msg, preferredStyle: .Alert)
        let action = UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil)
        alert.addAction(action)
        presentViewController(alert, animated: true, completion: nil)
    }
    


}












