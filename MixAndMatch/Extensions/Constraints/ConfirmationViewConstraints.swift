//
//  ConfirmationViewConstraints.swift
//  MixAndMatch
//
//  Created by MattHew Phraxayavong on 12/10/19.
//  Copyright © 2019 Matthew Phraxayavong. All rights reserved.
//

import Foundation
extension ConfirmationView {
    func setupConstraints() {
        
//        generateImageViewButton.translatesAutoresizingMaskIntoConstraints = false
//        generateImageViewButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 100).isActive = true
//        generateImageViewButton.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true
//        generateImageViewButton.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        generateLabel.translatesAutoresizingMaskIntoConstraints = false
        generateLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 25).isActive = true
        generateLabel.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true
        generateLabel.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        correctLabel.translatesAutoresizingMaskIntoConstraints = false
        correctLabel.topAnchor.constraint(equalTo: generateLabel.topAnchor, constant: 300).isActive = true
        correctLabel.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true
        
    }
}
