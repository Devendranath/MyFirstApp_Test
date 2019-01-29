//
//  User.swift
//  MyFirstApp_Test
//
//  Created by apple on 29/01/19.
//  Copyright © 2019 iOSProofs. All rights reserved.
//

import Foundation

class User {
    var name: String = ""
    var phno: Int = 0
    var address: String = ""
    var gender: Gender = .male
    
    func displayUserInfo() {
        print("Name is : \(name)")
        print("Phone number is: \(phno)")
        print("Address is: \(address)")
        print("Gender is : \(gender)")
    }
}
