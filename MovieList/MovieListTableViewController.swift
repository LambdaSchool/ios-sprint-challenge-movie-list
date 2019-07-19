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

    func loadMovies(){
        movies = realm.objects(Movie.self)
        tableView.reloadData()
    }
    

}
extension MovieListTableViewController: UITableViewDelegate, UITableViewDataSource, SwipeTableViewCellDelegate{
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath, for orientation: SwipeActionsOrientation) -> [SwipeAction]? {
        guard orientation == .right else { return nil }
        
        let deleteAction = SwipeAction(style: .destructive, title: "Delete") { action, indexPath in
            // handle action by updating model with deletion
            
            self.deleteMovie(at: indexPath)
            
        }
        
        
        // customize the action appearance
        //deleteAction.image = UIImage(named: "delete")
        
        return [deleteAction]
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
            do {
                try realm.write {
                    movie.haveSeen = !movie.haveSeen
                }
                loadMovies()
            }catch{
                print("error updating seen status, \(error)")
            }
        }
    
        tableView.deselectRow(at: indexPath, animated: true)
    }
    func tableView(_ tableView: UITableView, editActionsOptionsForRowAt indexPath: IndexPath, for orientation: SwipeActionsOrientation) -> SwipeOptions {
        var options = SwipeOptions()
        options.expansionStyle = .destructive
        options.transitionStyle = .border
        return options
    }
    //MARK: - deletion method
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
extension MovieListTableViewController: AddMovieDelegate{
    func newMovieAdded(movie: Movie) {
        self.save(movie: movie)
        self.navigationController?.popViewController(animated: true)
    }
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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddMovieShowSegue"{
            guard let addMovieVC = segue.destination as? AddMovieViewController else {return}
            addMovieVC.delegate = self
        }
    }
}
