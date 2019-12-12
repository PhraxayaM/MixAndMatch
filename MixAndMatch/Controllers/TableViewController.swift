//
//  TableViewController.swift
//  MixAndMatch
//
//  Created by MattHew Phraxayavong on 12/7/19.
//  Copyright © 2019 Matthew Phraxayavong. All rights reserved.
//

import Foundation

import UIKit

class TableViewController: UIViewController {
    
    let viewModel = GameViewModel()
    let dataSource = GameViewDataSource()
    var gameView = GameView()
    var menuView = MainMenuView()
    var confirmView = ConfirmationView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        view.backgroundColor = .green
        setup()
        
        dataSource.viewModel = viewModel
        self.dataSource.rowCount = self.viewModel.words.count
        
        DispatchQueue.main.async {
            self.gameView.tableView.isEditing = true
            self.gameView.tableView.dataSource = self.dataSource
            self.gameView.tableView.delegate = self.dataSource
            self.gameView.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
            self.gameView.tableView.reloadData()

        }
    }
    
    func setup() {
        setupTableView()
        
    }
    
    

    func setupTableView() {
        let GameViews = GameView(frame: self.view.frame)
        self.gameView = GameViews
        self.view.addSubview(gameView)
        gameView.confirmButton.addTarget(self, action: #selector(presentGameView), for: .touchUpInside)
        
    }
        @objc func presentGameView() {
                    let createView = ConfirmationViewController()
        //            self.present(createView, animated: true)
                    self.show(createView, sender: .none)
                }
    
    
//    func setupTableView() {
//            let MainMenuViews = MainMenuView(frame: self.view.frame)
//            self.menuView = MainMenuViews
//            self.view.addSubview(menuView)
//            menuView.generateImageViewButton.addTarget(self, action: #selector(presentGameView), for: .touchUpInside)
//
//        }
//    @objc func presentGameView() {
//                let createView = MixingViewController()
//    //            self.present(createView, animated: true)
//                self.show(createView, sender: .none)
//            }
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        setup()
////        setupViewConstraints()
//
//        dataSource.viewModel = viewModel
//        viewModel.populatePreviousSessionsArray{
//            self.dataSource.rowCount = self.viewModel.previousSessions.count
//
//            DispatchQueue.main.async {
//                self.leaderboardView.tableView.dataSource = self.dataSource
//                self.leaderboardView.tableView.delegate = self.dataSource
//                self.leaderboardView.tableView.register(LeaderboardTableViewCell.self, forCellReuseIdentifier: "cell")
//                self.leaderboardView.tableView.reloadData()
//
//            }
//
//        }
//    }
//
//
//    func setup() {
//
//        setupTableView()
//        addButtonTarget()
//    }
//    func setupTableView() {
//        let LeaderView = LeaderboardView(frame: self.view.frame)
//        self.leaderboardView = LeaderView
//        self.view.addSubview(leaderboardView)
//    }
//
//    func addButtonTarget() {
//        leaderboardView.userStatsButton.addTarget(self, action: #selector(userStatsTapped), for: .touchUpInside)
////        menuView.createSessionButton.addTarget(self, action: #selector(newSessionTapped), for: .touchUpInside)
//
//    }
//
//    @objc func leaderboardTapped() {
//        let newSessionVC = UserRankingViewController()
//        navigationController?.pushViewController(newSessionVC, animated: true)
//    }
//
//    @objc func userStatsTapped() {
//        let newSessionVC = UserStatsViewController()
//        navigationController?.pushViewController(newSessionVC, animated: true)
//
//    }
}
