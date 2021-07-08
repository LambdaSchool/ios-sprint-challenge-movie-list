//
//  MovieListViewController.swift
//  Movie List
//
//  Created by Benjamin Hakes on 11/9/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation
import UIKit

class MovieListViewController: UIViewController, UIActivityItemSource, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    // load the table and set delegation
    override func viewWillAppear(_ animated: Bool){
        super.viewWillAppear(animated)
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.reloadData()
        
    }
    
    // Share data
    // THIS Functionality may cause errors on iPAD
    @IBAction func share(_ sender: Any) {
        
        var items: String = ""
        
        for item in 0..<(Model.shared.itemCount()-1){
            items += "\(Model.shared.item(at:item)), "
        }
        items += " \(Model.shared.item(at: Model.shared.itemCount()-1))"
        let list = [items]
        
        let ac = UIActivityViewController(activityItems: list, applicationActivities: nil)
        present(ac, animated: true)
    }
    
    
    // protocol stubs
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Model.shared.itemCount()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let reuseIndentifier = "cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIndentifier, for: indexPath)
        cell.textLabel?.text = Model.shared.item(at: indexPath.row)
        return cell
    }
    
    // this may not look like delete but it is!!!!
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        // Enable "magic" swipe-to-delete
        guard editingStyle == .delete else { return }
        
        Model.shared.removeItem(at: indexPath.row)
        //tableView.reloadData()
        tableView.deleteRows(at: [indexPath], with: .fade)
    }
    
    // move row
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        Model.shared.moveItem(from: sourceIndexPath.row, to: destinationIndexPath.row)
        tableView.moveRow(at: sourceIndexPath, to: destinationIndexPath)
    }
    
    // edit table (next two functions)
    @IBAction func editTable(_ sender: Any) {
        tableView.setEditing(true, animated: true)
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(stopEditingTable(_:)))
    }
    
    @objc
    func stopEditingTable(_ sender: Any) {
        tableView.setEditing(false, animated: true)
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .edit, target: self, action: #selector(editTable(_:)))
    }
    
    // Activity View Controller protocol stubs
    func activityViewControllerPlaceholderItem(_ activityViewController: UIActivityViewController) -> Any {
        return ""
    }
    
    func activityViewController(_ activityViewController: UIActivityViewController, itemForActivityType activityType: UIActivity.ActivityType?) -> Any? {
        return ""
    }
}
