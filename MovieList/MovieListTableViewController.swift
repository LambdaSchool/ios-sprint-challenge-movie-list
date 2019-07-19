//
//  MovieListTableViewController.swift
//  MovieList
//
//  Created by Bradley Yin on 7/19/19.
//  Copyright © 2019 bradleyyin. All rights reserved.
//

import UIKit
import SwipeCellKit
import RealmSwift

class MovieListTableViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    let realm = try! Realm()
    var movies : Results<Movie>?

    override func viewDidLoad() {
        tableView.dataSource = self
        tableView.delegate = self
        loadMovies()
    }


    

}
extension MovieListTableViewController: UITableViewDelegate, UITableViewDataSource, SwipeTableViewCellDelegate{
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath, for orientation: SwipeActionsOrientation) -> [SwipeAction]? {
        if orientation == .right {
           
            let deleteAction = SwipeAction(style: .destructive, title: "Delete") { action, indexPath in
                // handle action by updating model with deletion
                
                self.deleteMovie(at: indexPath)
                
            }
            
            return [deleteAction]
        }else if orientation == .left{
            let editAction = SwipeAction(style: .default, title: "Edit") { action, indexPath in
                // handle action by updating model with deletion
                var textField = UITextField ()
                let alert = UIAlertController (title: "Change Movie Name", message: "", preferredStyle: .alert)
                let action = UIAlertAction(title: "Change", style: .default, handler: { (action) in
                    self.updateName(at: indexPath, newName: textField.text ?? "" )
                    
                })
                let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: { (action) in
                    //cancel
                    self.tableView.reloadData()
                })
                alert.addAction(action)
                alert.addAction(cancelAction)
                alert.addTextField(configurationHandler: { (alertTextField) in
                    alertTextField.placeholder = "Name of Movie"
                    textField = alertTextField
                })
                
              self.present(alert, animated: true, completion: nil)
            }
            editAction.backgroundColor = .green
            return[editAction]
        }
        return nil
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell else {return UITableViewCell()}
        cell.movie = movies?[indexPath.row]
        cell.delegate = self
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let movie = movies?[indexPath.row]{
          updateSeenStatus(movie: movie)
        }
    
        tableView.deselectRow(at: indexPath, animated: true)
    }
    func tableView(_ tableView: UITableView, editActionsOptionsForRowAt indexPath: IndexPath, for orientation: SwipeActionsOrientation) -> SwipeOptions {
        var options = SwipeOptions()
        if orientation == .right{
            options.expansionStyle = .destructive
            options.transitionStyle = .border
        }else if orientation == .left{
            options.expansionStyle = .selection
            options.backgroundColor = .green
            options.transitionStyle = .border
        }
        
        
        return options
    }
 
    
    
    
}
extension MovieListTableViewController: AddMovieDelegate{
    func newMovieAdded(movie: Movie) {
        self.save(movie: movie)
        self.navigationController?.popViewController(animated: true)
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddMovieShowSegue"{
            guard let addMovieVC = segue.destination as? AddMovieViewController else {return}
            addMovieVC.delegate = self
        }
    }
}
extension MovieListTableViewController{
    //CRUD
    func save (movie: Movie) {
        do{
            try realm.write {
                realm.add(movie)
            }
        }catch{
            print("error in saving, \(error)")
        }
        tableView.reloadData()
    }
    
    func loadMovies(){
        movies = realm.objects(Movie.self)
        tableView.reloadData()
    }
    
    func updateSeenStatus(movie: Movie){
        do {
            try realm.write {
                movie.haveSeen = !movie.haveSeen
            }
            loadMovies()
        }catch{
            print("error updating seen status, \(error)")
        }
    
    }
    
    func updateName(at indexPath: IndexPath, newName: String){
        if let movie = movies?[indexPath.row]{
            do{
                try realm.write {
                    movie.name = newName
                }
                loadMovies()
            }catch{
                print("error changing name \(error)")
            }
        }
        
    }
    
    func deleteMovie (at indexpath: IndexPath) {
        if let movieForDeletion = self.movies?[indexpath.row] {
            do{
                try self.realm.write {
                    self.realm.delete(movieForDeletion)
                }
            }catch {
                print("deletion error, \(error)")
            }
            
        }
        
    }
}
