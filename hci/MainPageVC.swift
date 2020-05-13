//
//  MainPageVC.swift
//  hci
//
//  Created by Mihai Alexandru Manolescu on 12/05/2020.
//  Copyright © 2020 Mihai Alexandru Manolescu. All rights reserved.
//

import Foundation


import UIKit

class MainPageVC: UIViewController
{
    var displayingMenu = false
    
    @IBOutlet weak var menuView: UIView!
    

    @IBOutlet weak var menuViewDisplayConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var faderView: UIView!

    @IBOutlet weak var faderViewConstraint: NSLayoutConstraint!
    
    
    @IBOutlet weak var menuButton: UIButton!
    @IBAction func menuButton(_ sender: Any)
    {

        triggerMenu()
    }
    
    
    @IBOutlet weak var buttonRecipes: UIButton!
    @IBAction func buttonRecipes(_ sender: Any)
    {
        
    }
    @IBAction func beans(_ sender: Any)
    {
        self.performSegue(withIdentifier: "veggiesList", sender: "")
    }
    
    @IBAction func buttonVeggies(_ sender: Any)
    {
        performSegue(withIdentifier: "veggiesList", sender: "")
    }
    
    
    override func viewDidLoad()
    {
        print("running viewDidLoad")
        
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(didTap(sender:)))
        tapGestureRecognizer.numberOfTapsRequired = 1
        faderView.isUserInteractionEnabled = true
        faderView.addGestureRecognizer(tapGestureRecognizer)
    }
    
    func setupUI()
        {

            self.buttonRecipes.layer.cornerRadius = 18
            self.faderViewConstraint.constant = -1000
            
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
//                    self.faderView.alpha=0.5
                    self.view.layoutIfNeeded()
                }
            }
            else
            {
    //            self.faderView.alpha=0.5
                self.faderViewConstraint.constant = -450
                self.view.layoutIfNeeded()
                
                self.menuViewDisplayConstraint.constant = -200
                
                UIView.animate(withDuration: 0.6) {
//                    self.faderView.alpha=0
                    self.view.layoutIfNeeded()
                }
                
            }
            
            displayingMenu = !displayingMenu
            
            if displayingMenu
                  {
                       print("displayingMenu\n")
                  }
            else
            {
                print("the menu is hidden \n")
            }
        }
    
    override func viewWillAppear(_ animated: Bool)
    {
        setupUI()
    }
    
    @objc func didTap(sender: UITapGestureRecognizer) {
        let location = sender.location(in: view)
        // User tapped at the point above. Do something with that if you want.
        triggerMenu()
        
    }
    
//    override func performSegue(withIdentifier identifier: String, sender: Any?)
//    {
//        
//    }
}
