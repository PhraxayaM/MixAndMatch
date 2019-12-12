//
//  MixingViewDataSource.swift
//  MixAndMatch
//
//  Created by MattHew Phraxayavong on 12/10/19.
//  Copyright © 2019 Matthew Phraxayavong. All rights reserved.
//

import Foundation
import UIKit

class MixingViewDataSource: NSObject, UITableViewDataSource, UITableViewDelegate {
    var viewModel: MixingViewModel?
    var rowCount: Int?
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rowCount!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let task = viewModel!.words[indexPath.row]
        print(task)
//        cell.textLabel?.text = task
        cell.textLabel?.text = "\(indexPath.row + 1) | \(task.title)"
        cell.detailTextLabel?.text = task.text
//        cell.imageView?.textInputMode = task.number
        
        return cell
    }
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let movedObject = self.viewModel?.words[sourceIndexPath.row]
        viewModel?.words.remove(at: sourceIndexPath.row)
        viewModel?.words.insert(movedObject!, at: destinationIndexPath.row)
        tableView.reloadData()
//        let movedObject = self.headlines[sourceIndexPath.row]
//        headlines.remove(at: sourceIndexPath.row)
//        headlines.insert(movedObject, at: destinationIndexPath.row)
    }
//    func tableView(_ tableView: UITableView, itemsForBeginning session: UIDragSession, at indexPath: IndexPath) -> [UIDragItem] {
//        let counter = counters[indexPath.row]
//        let itemProvider = NSItemProvider(object: counter)
//
//        let dragItem = UIDragItem(itemProvider: itemProvider)
//
//        return [dragItem]
//    }
    func tableView(_ tableView: UITableView, dropSessionDidUpdate session: UIDropSession, withDestinationIndexPath destinationIndexPath: IndexPath?) -> UITableViewDropProposal {
        return UITableViewDropProposal(operation: .move, intent: .insertAtDestinationIndexPath)

    }
//    func tableView(_ tableView: UITableView, performDropWith coordinator: UITableViewDropCoordinator) {
//      let insertionIndex: IndexPath
//        if let indexPath = coordinator.destinationIndexPath {
//          insertionIndex = indexPath
//        } else {
//          let section = tableView.numberOfSections - 1
//            let row = tableView.numberOfRows(inSection: section)
//            insertionIndex = IndexPath(row: row, section: section)
//        }
//
//      for item in coordinator.items {
//        guard let sourceIndexPathRow = item.sourceIndexPath?.row else { continue }
//        item.dragItem.itemProvider.loadObject(ofClass: Counter.self) { (object, error) in
//          DispatchQueue.main.async {
//            if let counter = object as? Counter {
//              self.counters.remove(at: sourceIndexPathRow)
//                self.counters.insert(counter, at: insertionIndex.row)
//                tableView.reloadData()
//            } else {
//              return
//            }
//          }
//        }
//      }
//    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 15
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView()
        headerView.backgroundColor = UIColor.clear
        return headerView
    }
    
    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }
}
