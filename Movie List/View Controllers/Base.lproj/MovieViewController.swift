//
//  MovieListViewController.swift
//  Movie List
//
//  Created by Angel Buenrostro on 1/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var myBool : Bool = false

    
    
    @IBAction func edit(_ sender: UIButton) {
        myBool = !myBool
        tableView.setEditing(myBool, animated: true)
        if myBool {
            sender.setTitle("Done", for: .normal)
        } else {
            sender.setTitle("Edit", for: .normal)
        }
        
    }
    @IBOutlet var tableView: UITableView!
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return List.shared.itemCount()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "moviecell", for: indexPath)
        
        cell.textLabel!.text = List.shared.item(at: indexPath.row)
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        guard editingStyle == .delete else { return }
        
        List.shared.removeItem(at: indexPath.row)
        tableView.deleteRows(at: [indexPath], with: .automatic)
    }
    
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        List.shared.moveItem(from: sourceIndexPath.row, to: destinationIndexPath.row)
    }
    
    let reuseIdentifier = "moviecell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
}

