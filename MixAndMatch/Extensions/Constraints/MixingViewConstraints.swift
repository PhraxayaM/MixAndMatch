//
//  MixingViewConstraints.swift
//  MixAndMatch
//
//  Created by MattHew Phraxayavong on 12/10/19.
//  Copyright © 2019 Matthew Phraxayavong. All rights reserved.
//

import Foundation
extension MixingView {
    
    func setupViewConstraints() {
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor).isActive = true
        tableView.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: safeAreaLayoutGuide.rightAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor).isActive = true
        tableView.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor, multiplier: 0.7).isActive = true
        
        confirmButton.translatesAutoresizingMaskIntoConstraints = false
        confirmButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 100).isActive = true
//        confirmButton.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor, constant: 100).isActive = true
//        confirmButton.rightAnchor.constraint(equalTo: safeAreaLayoutGuide.rightAnchor, constant: 100).isActive = true
        confirmButton.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true
        
        confirmLabel.translatesAutoresizingMaskIntoConstraints = false
        confirmLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 50).isActive = true
        confirmLabel.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true
        
    }
    
}

