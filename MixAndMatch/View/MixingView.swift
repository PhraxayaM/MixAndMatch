//
//  MixingView.swift
//  MixAndMatch
//
//  Created by MattHew Phraxayavong on 12/10/19.
//  Copyright © 2019 Matthew Phraxayavong. All rights reserved.
//

import Foundation
import UIKit

class MixingView: UIView {
    let tableView = UITableView()
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        backgroundColor = .white
        setupView()
        setupViewConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView(){
        //        backgroundColor = .red
        //        tableView.backgroundColor = backgroundColor
        addSubview(tableView)
        addSubview(confirmButton)
        addSubview(confirmLabel)
    }
    
    let confirmButton: UIButton = {
        let button = UIButton()
        button.setImage(#imageLiteral(resourceName: "play"), for: .normal)
        //               imageView.addTarget(self, action: #selector(fcTapped), for: .touchUpInside)
        button.imageView?.contentMode = .scaleAspectFit
        
        
        return button
    }()
    
    let confirmLabel: UILabel = {
            let label = UILabel()
            label.textColor = #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)
            label.text = "Memorize the order of the list"
            label.font = UIFont(name: "Avenir-Black", size: 25)
            label.textAlignment = .center
    
    
            return label
        }()
}
