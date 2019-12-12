//
//  MainMenuConstraints.swift
//  MixAndMatch
//
//  Created by MattHew Phraxayavong on 12/9/19.
//  Copyright © 2019 Matthew Phraxayavong. All rights reserved.
//

import Foundation
import UIKit

extension MainMenuView {
    func setupConstraints() {
        
        generateImageViewButton.translatesAutoresizingMaskIntoConstraints = false
        generateImageViewButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 100).isActive = true
        generateImageViewButton.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true
        generateImageViewButton.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        generateLabel.translatesAutoresizingMaskIntoConstraints = false
        generateLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 25).isActive = true
        generateLabel.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true
        generateLabel.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        
    }
}
