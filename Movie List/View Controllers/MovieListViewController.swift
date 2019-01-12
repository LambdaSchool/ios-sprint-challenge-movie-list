//
//  MovieListViewController.swift
//  Movie List
//
//  Created by Dustin Koch on 1/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    let reuseIdentifier = "cell"
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Model.shared.movieCount()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath)
        cell.textLabel?.text = Model.shared.movie(at: indexPath.row)
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        guard editingStyle == .delete else { return }
        
        Model.shared.removeMovie(at: indexPath.row)
        tableView.deleteRows(at: [indexPath], with: .automatic)
    }
    

    
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        Model.shared.moveMovie(from: sourceIndexPath.row, to: destinationIndexPath.row)
    }
    
    @IBAction func editMovieList(_ sender: UIBarButtonItem) {
        tableView.setEditing(true, animated: true)
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .done,  target: self, action: #selector(stopEditingTable(_:)))
    }
    
    @objc
    func stopEditingTable(_ sender: Any) {
        tableView.setEditing(false, animated: true)
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .edit, target: self, action: #selector(editMovieList(_:)))
    }
    
    @IBOutlet weak var tableView: UITableView!
    
    
    
    
}


