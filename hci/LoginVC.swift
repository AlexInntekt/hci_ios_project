//
//  ViewController.swift
//  hci
//
//  Created by Mihai Alexandru Manolescu on 08/05/2020.
//  Copyright © 2020 Mihai Alexandru Manolescu. All rights reserved.
//

import UIKit

class LoginVC: UIViewController, UITextFieldDelegate
{

    var displayingMenu = false
    
    @IBOutlet weak var menuView: UIView!
    @IBOutlet var username_textfield: UITextField!
    @IBOutlet var password_textfield: UITextField!
    
    @IBOutlet weak var menuViewDisplayConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var faderView: UIView!
    @IBOutlet weak var faderViewConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var menuButton: UIButton!
    @IBAction func menuButton(_ sender: Any)
    {
        print("Clicked on button menu")
        triggerMenu()
    }
    
    @IBOutlet weak var loginButton: UIButton!
    @IBAction func loginButton(_ sender: Any)
    {
    }
    
    
    
    func setupUI()
    {
//        self.menuViewDisplayConstraint.constant = -200
//        self.leadingConstraintFaderView.constant = 1000
        self.loginButton.layer.cornerRadius = 18
//        self.username_textfield.layer.cornerRadius = 21
        self.view.layoutIfNeeded()
        
    }
    
    func triggerMenu()
    {
        
        if(!displayingMenu)
        {
//            self.leadingConstraintFaderView.constant = 0
//            self.faderView.alpha=0
            self.faderViewConstraint.constant = 0
            self.view.layoutIfNeeded()
            
            self.menuViewDisplayConstraint.constant = 0
            
            UIView.animate(withDuration: 0.6) {
//                self.faderView.alpha=0.5
                self.view.layoutIfNeeded()
            }
        }
        else
        {
//            self.leadingConstraintFaderView.constant = +1000
//            self.faderView.alpha=0.5
            self.faderViewConstraint.constant = -1000
            self.view.layoutIfNeeded()
            
            self.menuViewDisplayConstraint.constant = -200
            
            UIView.animate(withDuration: 0.6) {
//                self.faderView.alpha=0
                self.view.layoutIfNeeded()
            }
            
        }
        
        displayingMenu = !displayingMenu
    }
    
    override func viewWillAppear(_ animated: Bool)
    {
        setupUI()
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print("running viewDidLoad")
        
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(didTap(sender:)))
        tapGestureRecognizer.numberOfTapsRequired = 1
        faderView.isUserInteractionEnabled = true
        faderView.addGestureRecognizer(tapGestureRecognizer)
        
        username_textfield.delegate = self
        password_textfield.delegate = self
    }
    
    @objc func didTap(sender: UITapGestureRecognizer) {
        let location = sender.location(in: view)
        // User tapped at the point above. Do something with that if you want.
        triggerMenu()
        
    }
    


}

