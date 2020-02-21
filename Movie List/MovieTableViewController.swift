//
//  MovieTableViewController.swift
//  Movie List
//
//  Created by Bradley Diroff on 2/21/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    
    let defaults = UserDefaults.standard
    
    var movies: [Movie] = [] {
        didSet {
            var movieDict = [String: Bool]()
            for movie in movies {
                movieDict["\(movie.name)"] = movie.seen
            }
            defaults.set(movieDict, forKey: "SavedDict")
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadArray()

        tableView.dataSource = self
        tableView.delegate = self
        
        
        // Do any additional setup after loading the view.
    }
    
    func loadArray() {
        
        var movieList = [Movie]()
        
        let savedDict = defaults.object(forKey: "SavedDict") as? [String: Bool] ?? [String: Bool]()
        for (key,value) in savedDict {
            let newMovie = Movie(name: key, seen: value)
            movieList.append(newMovie)
        }
        
        movies = movieList
        tableView.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            
        if segue.identifier == "addMovieSegue" {
            guard let addMovieVC = segue.destination as? AddMovieViewController else {return}
            addMovieVC.delegate = self
            
        }
    }

}

extension MovieTableViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell else {return UITableViewCell()}
        
        let movie = movies[indexPath.row]
        cell.movie = movie
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        let editAction = UITableViewRowAction(style: .default, title: "Edit", handler: { (action, indexPath) in
            let alert = UIAlertController(title: "", message: "Edit list item", preferredStyle: .alert)
            alert.addTextField(configurationHandler: { (textField) in
                textField.text = self.movies[indexPath.row].name
            })
            alert.addAction(UIAlertAction(title: "Update", style: .default, handler: { (updateAction) in
                if let finishedText = alert.textFields?.first?.text {
                    self.movies[indexPath.row].name = finishedText
                    self.tableView.reloadRows(at: [indexPath], with: .fade)
                }

            }))
            alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
            self.present(alert, animated: false)
        })

        let deleteAction = UITableViewRowAction(style: .default, title: "Delete", handler: { (action, indexPath) in
            self.movies.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            tableView.reloadData()
        })
        
       return [deleteAction, editAction]
    }
    
}

extension MovieTableViewController: AddMovieDelegate {
    func movieWasAdded(_ movie: Movie) {
        movies.append(movie)
        tableView.reloadData()
    }
}
