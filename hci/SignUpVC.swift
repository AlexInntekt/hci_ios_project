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
    
    @IBOutlet weak var age_textfield: UITextField!
    
    @IBOutlet weak var registerButton: UIButton!

    @IBAction func registerButton(_ sender: Any)
    {
        
    }
    
    
    
}


extension SignUpVC: UITextFieldDelegate{
    public func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true;
    }
}
