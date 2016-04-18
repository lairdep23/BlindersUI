//
//  DataService.swift
//  Blinders
//
//  Created by Evan on 3/17/16.
//  Copyright © 2016 Evan. All rights reserved.
//

import Foundation
import Firebase

let baseUrl = "https://blinders.firebaseio.com"
class DataService {
    static let ds = DataService()
    
    private var _REF_BASE = Firebase(url: "\(baseUrl)")
    private var _REF_USERS = Firebase(url: "\(baseUrl)/users")
    private var _REF_DATES = Firebase(url: "\(baseUrl)/dates")
    
    var REF_BASE: Firebase {
        return _REF_BASE
    }
    
    var REF_USERS: Firebase {
        return _REF_USERS
    }
    
    var REF_DATES: Firebase {
        return _REF_DATES
    }
    
    func createFirebaseUser(uid: String, user: Dictionary<String, String>) {
        REF_USERS.childByAppendingPath(uid).setValue(user)
    }
}