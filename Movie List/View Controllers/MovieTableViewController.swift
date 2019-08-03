//
//  MovieTableViewController.swift
//  Movie List
//
//  Created by Joel Groomer on 8/3/19.
//  Copyright © 2019 Lambda School. All rights reserved.
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
        if segue.identifier == "ShowAddMovieSegue" {
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
        cell.delegate = self
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCell.EditingStyle.delete {
            movieList.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.automatic)
        }
    }
}

extension MovieTableViewController: MovieDelegate {
    func addMovie(_ movie: Movie) {
        movieList.append(movie)
        tableView.reloadData()
        print(movieList)
        navigationController?.popViewController(animated: true)
    }
    
    func delMovie(_ movie: Movie) {
        guard let i = getMovieIndex(movie: movie) else { return }
        movieList.remove(at: i)
    }
    
    func toggleSeen(_ movie: Movie) -> Movie? {
        guard let i = getMovieIndex(movie: movie) else { return nil }
        movieList[i].seen = !movieList[i].seen
        return movieList[i]
    }

    func getMovieIndex(movie: Movie) -> Int? {
        return movieList.firstIndex(of: movie)
    }
}
