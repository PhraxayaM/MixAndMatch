//
//  ConfirmationView.swift
//  MixAndMatch
//
//  Created by MattHew Phraxayavong on 12/10/19.
//  Copyright © 2019 Matthew Phraxayavong. All rights reserved.
//

import Foundation
import UIKit

class ConfirmationView: UIView {
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        setupSubViews()
        setupConstraints()
//        backgroundColor = .red
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
        func setupSubViews() {
            
            addSubview(generateImageViewButton)
            addSubview(generateLabel)
            addSubview(correctLabel)
        }
        
        let generateImageViewButton: UIButton = {
               let imageView = UIButton()
               imageView.setImage(#imageLiteral(resourceName: "Generate"), for: .normal)
//               imageView.addTarget(self, action: #selector(fcTapped), for: .touchUpInside)
               imageView.imageView?.contentMode = .scaleAspectFit
               
               
               return imageView
           }()
    
        let generateLabel: UILabel = {
            let label = UILabel()
            label.textColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
            label.text = "Congratulations!"
            label.font = UIFont(name: "Avenir-Black", size: 25)
            label.textAlignment = .center
    
    
            return label
        }()
    let correctLabel: UILabel = {
        let label = UILabel()
        label.textColor = #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)
        label.text = "You got 4/4 correct!"
        label.font = UIFont(name: "Avenir-Black", size: 25)
        label.textAlignment = .center
        
        
        return label
    }()
        
}
