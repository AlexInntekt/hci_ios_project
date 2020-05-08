//
//  SignUpVC.swift
//  hci
//
//  Created by Mihai Alexandru Manolescu on 08/05/2020.
//  Copyright © 2020 Mihai Alexandru Manolescu. All rights reserved.
//

import Foundation
import UIKit

class SignUpVC:UIViewController
{
    
    @IBOutlet var age_textfield: UITextField!
    @IBOutlet weak var height_textfield: UITextField!
    @IBOutlet weak var weight_textfield: UITextField!
    
    
    @IBOutlet var registerButton: UIButton!
    @IBAction func registerButton(_ sender: Any)
    {
        
    }
    
    func setUpUI()
    {
        self.age_textfield.layer.cornerRadius = 18
        self.height_textfield.layer.cornerRadius = 18
        self.weight_textfield.layer.cornerRadius = 18
        self.registerButton.layer.cornerRadius = 10
        
        
        self.view.layoutIfNeeded()
    }
    
    override func viewDidLoad()
    {
        self.age_textfield.delegate = self
        self.height_textfield.delegate = self
        self.weight_textfield.delegate = self
        
        self.setUpUI()
    }
    
}


extension SignUpVC: UITextFieldDelegate{
    public func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true;
    }
}
