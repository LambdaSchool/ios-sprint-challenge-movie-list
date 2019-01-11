//
//  MovieViewController.swift
//  Movie List
//
//  Created by Jocelyn Stuart on 1/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return MovieController.shared.movies.count
    }
    
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var seenButton: UIButton!
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let movies = MovieController.shared.movies
        let movie = movies[indexPath.row]
        
        cell.textLabel!.text = movie.text
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        // Enable "magic" swipe-to-delete
        guard editingStyle == .delete else { return }
        
        // Implement here
        let movie = MovieController.shared.movies[indexPath.row]
        MovieController.shared.removeMovie(movie: movie)
        tableView.reloadData()
        
        
    }
    
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        
        // Implement here
        let movedObject = MovieController.shared.movies[sourceIndexPath.row]
        MovieController.shared.removeMovie(movie: movedObject)
        MovieController.shared.moveMovie(from: sourceIndexPath.row, to: destinationIndexPath.row)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func toggleSeen(_ sender: UIButton) {
        if MovieController.shared.seen == false {
            MovieController.shared.seen = true
            seenButton.setTitle("Seen", for: .normal)
        } else {
            MovieController.shared.seen = false
            seenButton.setTitle("Not Seen", for: .normal)
        }
        
    }
    
    var reuseIdentifier: String = "cell"
    
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
