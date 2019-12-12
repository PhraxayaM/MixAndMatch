//
//  MixingViewController.swift
//  MixAndMatch
//
//  Created by MattHew Phraxayavong on 12/10/19.
//  Copyright © 2019 Matthew Phraxayavong. All rights reserved.
//

import Foundation
import UIKit

class MixingViewController: UIViewController {
    
    let viewModel = MixingViewModel()
    let dataSource = MixingViewDataSource()
    var mixingView = MixingView()
    var menuView = MainMenuView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        setup()
        
        
        dataSource.viewModel = viewModel
        self.dataSource.rowCount = self.viewModel.words.count
        
        DispatchQueue.main.async {
//            self.gameView.tableView.isEditing = true
            self.mixingView.tableView.dataSource = self.dataSource
            self.mixingView.tableView.delegate = self.dataSource
            self.mixingView.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
            self.mixingView.tableView.reloadData()

        }
    }
    
    func setup() {
        setupTableView()
        
    }
    
    

    func setupTableView() {
        let MixingViews = MixingView(frame: self.view.frame)
        self.mixingView = MixingViews
        self.view.addSubview(mixingView)
        mixingView.confirmButton.addTarget(self, action: #selector(presentGameView), for: .touchUpInside)
    }
     @objc func presentGameView() {
                 let createView = TableViewController()
     //            self.present(createView, animated: true)
                 self.show(createView, sender: .none)
             }
}
//func setupTableView() {
//         let MainMenuViews = MainMenuView(frame: self.view.frame)
//         self.menuView = MainMenuViews
//         self.view.addSubview(menuView)
//         menuView.generateImageViewButton.addTarget(self, action: #selector(presentGameView), for: .touchUpInside)
//
//     }
// @objc func presentGameView() {
//             let createView = MixingViewController()
// //            self.present(createView, animated: true)
//             self.show(createView, sender: .none)
//         }

//func setupTableView() {
//       let GameViews = GameView(frame: self.view.frame)
//       self.gameView = GameViews
//       self.view.addSubview(gameView)
//   }
