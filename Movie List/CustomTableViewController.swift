//
//  CustomTableViewController.swift
//  Movie List
//
//  Created by Cameron Dunn on 1/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class CustomTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var currentIndexPath : Int = 0
    @IBOutlet weak var tableView: UITableView!
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        Model.shared.loadMovies()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.reloadData()
    }

    // MARK: - Table view data source


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return Model.shared.movieArray.count
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        if(Model.shared.movieArray.count > 0){
        cell.label.text = Model.shared.movieArray[indexPath.row].name
        }
        cell.button.tag = indexPath.row
        cell.button.addTarget(self, action: #selector(changeSeen(sender:)), for: .touchUpInside)
        if(Model.shared.movieArray[indexPath.row].isSeen == true){
            cell.button.setTitle("Seen", for: .normal)
        }else{
            cell.button.setTitle("Not seen", for: .normal)
        }
        
        return cell
    }

    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            Model.shared.deleteMovie(indexPath: indexPath.row)
            tableView.reloadData()
        }
    }
    @objc public func changeSeen(sender : AnyObject){
        if(Model.shared.movieArray[sender.tag].isSeen == false){
            Model.shared.movieArray[sender.tag].isSeen = true
        }else{
            Model.shared.movieArray[sender.tag].isSeen = false
        }
        tableView.reloadData()
    }

}
