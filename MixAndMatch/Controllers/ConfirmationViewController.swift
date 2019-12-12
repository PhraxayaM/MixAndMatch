//
//  ConfirmationViewController.swift
//  MixAndMatch
//
//  Created by MattHew Phraxayavong on 12/10/19.
//  Copyright © 2019 Matthew Phraxayavong. All rights reserved.
//

import Foundation
import UIKit

class ConfirmationViewController: UIViewController {
    
    
    var confirmationView = ConfirmationView()
    var menuView = MainMenuView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setup()
        


        }
    
    
    func setup() {
        setupTableView()
        
    }
    
    

    func setupTableView() {
        let ConfirmationViews = ConfirmationView(frame: self.view.frame)
        self.confirmationView = ConfirmationViews
        self.view.addSubview(confirmationView)

    }
    
}
