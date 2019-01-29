//
//  ViewController.swift
//  MyFirstApp_Test
//
//  Created by apple on 29/01/19.
//  Copyright © 2019 iOSProofs. All rights reserved.
//

import UIKit
enum Gender {
    case male
    case female
}

class ViewController: UIViewController {
    var users: [User] = []
    @IBOutlet weak var userNameTF: UITextField!
    @IBOutlet weak var addressTF: UITextField!
    @IBOutlet weak var phoneTF: UITextField!
    
    @IBAction func genderSelected(_ sender: Any) {
        let button = sender as! UIButton
        button.isSelected = true
        if button.tag == 100 {
            let otherButton = view.viewWithTag(200) as! UIButton
            otherButton.isSelected = false
        } else {
            let otherButton = view.viewWithTag(100) as! UIButton
            otherButton.isSelected = false
        }
    }
    
    @IBAction func save(_ sender: Any) {
        let newUer = User()
        newUer.name = userNameTF.text!
        newUer.phno = Int(phoneTF.text!)!
        newUer.address = addressTF.text!
        newUer.gender = (view.viewWithTag(100) as! UIButton).isSelected ? Gender.male : Gender.female
        users.append(newUer)
        print("User is saved! \(newUer)")
    }
    
    @IBAction func displayAllUsers() {
        for aUser in users {
            aUser.displayUserInfo()
        }
    }
    
    @IBAction func resetAction(_ sender: Any) {
        userNameTF.text = ""
        phoneTF.text = ""
        addressTF.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
}

