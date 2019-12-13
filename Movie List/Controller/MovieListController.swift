//
//  MovieListController.swift
//  Movie List
//
//  Created by Kenny on 12/13/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieListController: UIViewController {
    //MARK: Outlets
    @IBOutlet weak var tableView: UITableView!
    var movies: [Movie]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //MARK: Set Delegates
        tableView.delegate = self
        tableView.dataSource = self
        self.movies = FileOps.loadMovies()
        tableView.reloadData()
        // Do any additional setup after loading the view.
    }
    

       // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddMovieSegue" {
            guard let destination = segue.destination as? AddMovieVC else {return}
            destination.delegate = self
        }
    }
    //MARK: Helper Methods:
    
}

extension MovieListController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell") as? MovieCell else {
            fatalError("MovieCell Not Found!")
        }
        cell.movie = movies?[indexPath.row]
        return cell
    }
    
    //MARK: delete rows
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let contextItem = UIContextualAction(style: .destructive, title: "Stop Tracking") {  (contextualAction, view, boolValue) in
            //tableView.deleteRows(at: [indexPath], with: .fade) //crash (I was trying to get a fade animation with the deletion, but the deletion must be handled in .destructive - hence I was trying to delete a row that didn't exist
            self.movies?.remove(at: indexPath.row)
            FileOps.saveMovies(movies: self.movies)
            tableView.reloadData()
        }
        let swipeActions = UISwipeActionsConfiguration(actions: [contextItem])

        return swipeActions
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
}

extension MovieListController: AddMovieDelegate {
    func movieWasAdded(_ movie: Movie) {
        if self.movies != nil {
            self.movies!.append(movie)
        } else {
            self.movies = [movie]
        }
        FileOps.saveMovies(movies: self.movies)
        self.tableView.reloadData()
    }
}
