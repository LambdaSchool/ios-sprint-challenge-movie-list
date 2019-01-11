//
//  ListViewController.swift
//  Movie List
//
//  Created by Dustin Koch on 1/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let reuseIdentifier = "cell"
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Model.shared.movieCount()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath)
        
        let movies = Model.shared.movies
        let movie = movies[indexPath.row]
        cell.textLabel?.text = movie
        
        return cell
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.dataSource = self
        tableView.delegate = self
        tableView.reloadData()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        // Enable "magic" swipe-to-delete
        guard editingStyle == .delete else { return }
        
        let movie = Model.shared.movies
        Model.shared.removeMovie(at: indexPath.row)
        tableView.deleteRows(at: [indexPath], with: .automatic)
        
        tableView.reloadData()
        
    }
    
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        Model.shared.moveMovie(from: sourceIndexPath.row, to: destinationIndexPath.row)
    }
    
    @IBOutlet weak var newMovieLabel: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func addMovieButton(_ sender: UIButton) {
        guard let text = textField.text, !text.isEmpty else { return }
        
        Model.shared.addMovie(text)
        
        textField.text = nil
        
        tableView.reloadData()
    }
    
    
    @IBOutlet weak var tableView: UITableView!
    
    

    
    @IBAction func editTable(_ sender: Any) {
        tableView.setEditing(true, animated: true)
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(stopEditingTable(_:)))
    }
    
    @objc
    func stopEditingTable(_ sender: Any) {
        tableView.setEditing(false, animated: true)
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .edit, target: self, action: #selector(editTable(_:)))
    }
    

    

    
    
}
