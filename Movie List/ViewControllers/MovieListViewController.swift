//
//  MovieListViewController.swift
//  Movie List
//
//  Created by Ryan Murphy on 4/26/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    

    @IBOutlet var editButton: UIBarButtonItem!
    
    let movieController = MovieController()
    
    @IBOutlet var movieTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        movieTableView.reloadData()
    
        
//        self.movieTableView.isEditing = true
    }
   
//    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
//        return .none
//    }
//    
//    func tableView(_ tableView: UITableView, shouldIndentWhileEditingRowAt indexPath: IndexPath) -> Bool {
//        return false
//    }
//    
//   func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
//    let movedObject = movies[sourceIndexPath.row]
//        movies.remove(at: sourceIndexPath.row)
//        movies.insert(movedObject, at: destinationIndexPath.row)
//    }
    func tableView(_tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let movedObject = movies[sourceIndexPath.row]
            movies.remove(at: sourceIndexPath.row)
            movies.insert(movedObject, at: destinationIndexPath.row)
    }
        func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
            return .none
        }



    @IBAction func editButtonPressed(_ sender: Any) {
        
            movieTableView.isEditing = !movieTableView.isEditing
        
            switch movieTableView.isEditing {
            case true:
            editButton.title = "Done"
            case false:
            editButton.title = "Edit"
        
    }
    }

    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        movieTableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath)
                guard let movieCell = cell as? MovieTableViewCell else { return cell }
        
        // Get the note for row
        
        let movie = movies[indexPath.row]
        movieCell.movie = movie
        
        return cell
    }
 

}


