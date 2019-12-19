//
//  ListController.swift
//  Movie List
//
//  Created by Austin Cole on 11/9/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class ListController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let reuseIdentifier = "cell"
   
    
    @IBOutlet weak var tableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Model.shared.moviesCount() - 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath)
        cell.textLabel?.text = Model.shared.movie(at: indexPath.row)
        return cell
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.insertRows(at: [IndexPath(row: Model.shared.moviesCount() - 1, section: 0)], with: .fade)
        
        Model.shared.loadData()
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        guard editingStyle == .delete else { return }
        
        Model.shared.removeMovie(index: indexPath.row)
        
        tableView.deleteRows(at: [indexPath], with: .fade)
    }
    
    @IBAction func editTable(_ sender: Any) {
        
        tableView.setEditing(true, animated: true)
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(stopEditingTable(_:)))
    }
    
    @objc
    func stopEditingTable(_ sender: Any) {
        tableView.setEditing(false, animated: true)
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .edit, target: self, action: #selector(editTable(_:)))
    }
    
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        Model.shared.moveMovie(indexOrigin: sourceIndexPath.row, indexDestination: destinationIndexPath.row)
        tableView.moveRow(at: sourceIndexPath, to: destinationIndexPath)
        
    }
}






