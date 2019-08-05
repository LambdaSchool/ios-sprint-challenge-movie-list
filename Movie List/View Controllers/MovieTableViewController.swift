//
//  MovieTableViewController.swift
//  Movie List
//
//  Created by Casualty on 8/4/19.
//  Copyright © 2019 Thomas Dye. All rights reserved.
//

import UIKit

class MovieTableViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var movieList: [Movie] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        
        // Do any additional setup after loading the view.
    }
    
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddMovieSegue" {
            guard let vc = segue.destination as? AddMovieViewController else { return }
            vc.delegate = self
        }
    }
    
}

extension MovieTableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell
            else { return UITableViewCell() }
        cell.movie = movieList[indexPath.row]
        cell.newDelegate = self
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCell.EditingStyle.delete {
            movieList.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.automatic)
        }
    }
}

extension MovieTableViewController: AddMovieDelegate {
    func addMovie(_ movie: Movie) {
        movieList.append(movie)
        tableView.reloadData()
        print(movieList)
        navigationController?.popViewController(animated: true)
    }
    
    func toggleButtonSeenNotSeen(_ movie: Movie) -> Movie? {
        guard let i = returnIndex(movie: movie) else { return nil }
        movieList[i].seen = !movieList[i].seen
        return movieList[i]
    }
    
    func deleteMovie(_ movie: Movie) {
        guard let i = returnIndex(movie: movie) else { return }
        movieList.remove(at: i)
    }

    func returnIndex(movie: Movie) -> Int? {
        return movieList.firstIndex(of: movie)
    }
}
