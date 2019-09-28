//
//  MovieTableViewController.swift
//  Movie List
//
//  Created by Joseph Rogers on 8/4/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewController: UIViewController {
    
    @IBOutlet weak var tableview: UITableView!
    //MARK: - Properties
    //created a variable to hold an open instance of type Array of our model.
    var movies: [Movies] = []
    
    var persistentStoreURL: URL! {
        if let documentURL = try? FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true) {
            let persistentStoreURL = documentURL.appendingPathComponent("MovieList.plist")
            return persistentStoreURL
        }
        return nil
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let data = try? Data(contentsOf: persistentStoreURL),
            let savedMovies = try? PropertyListDecoder().decode([Movies].self, from: data) {
            movies = savedMovies
        }
    }
    
    func save() {
        if let data = try? PropertyListEncoder().encode(movies){
            try? data.write(to: persistentStoreURL)
        }
    }
    
    //MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "addMovieSegue" {
            if let addMovieVC = segue.destination as? AddMovieViewController {
                addMovieVC.delegate = self
            }
        }
    }
    //MARK: - Deleting Cells
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCell.EditingStyle.delete {
            movies.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.automatic)
            
            save()
        }
    }
}
    //MARK: - Data Source
extension MovieTableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    //MARK: - Custom TableViewCell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieTableCell", for: indexPath) as? MovieTableViewCell else {return UITableViewCell()}
        let movie = movies[indexPath.row]
        cell.movieNameLabel.text = movie.name
        return cell
    }
}
    //MARK: - AddMovie Delegation
extension MovieTableViewController: AddMovieDelegate {
    func movieWasCreated(_ movie: Movies) {
        movies.append(movie)
        dismiss(animated: true)
        tableview.reloadData()
        
        save()
    }
}



