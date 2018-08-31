//
//  MoviesListViewController.swift
//  Movie List
//
//  Created by Jason Modisett on 8/31/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class MoviesListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate, MovieControllerProtocol, MovieTableViewCellDelegate {

    // Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.delegate = self
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(viewWasTapped(sender:)))
        view.addGestureRecognizer(tapGestureRecognizer)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        sortTitlesAlphabetically()
    }
    
    func sortTitlesAlphabetically() {
        guard let movies = movieController?.movies else { return }
        moviesSorted = movies.sorted { $0.title < $1.title }
        moviesToShow = moviesSorted
    }
    
    func seenButtonWasTapped(on cell: MovieTableViewCell) {
        guard let indexPath = tableView.indexPath(for: cell) else { return }
            
        let movie = moviesToShow[indexPath.row]
        
        movieController?.toggleHasSeen(movie)
        tableView.reloadRows(at: [indexPath], with: .automatic)
        
        let hapticFeedback = UIImpactFeedbackGenerator(style: .medium)
        hapticFeedback.impactOccurred()
    }
    
    @objc func viewWasTapped(sender: UITapGestureRecognizer? = nil) {
        searchBar.endEditing(true)
    }
    
    
    // UISearchBarDelegate methods
    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
        searchBar.setShowsCancelButton(true, animated: true)
    }
    
    func searchBarTextDidEndEditing(_ searchBar: UISearchBar) {
        searchBar.setShowsCancelButton(false, animated: true)
        searchBar.endEditing(true)
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searchBar.endEditing(true)
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        moviesToShow = searchText.isEmpty ? moviesSorted : moviesSorted.filter({ (movie) -> Bool in
            return movie.title.range(of: searchText, options: .caseInsensitive) != nil
        })
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        searchBar.endEditing(true)
    }
    
    
    // UITableViewDataSource methods
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return moviesToShow.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell else { return UITableViewCell() }
        
        cell.delegate = self
        cell.movie = moviesToShow[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        tableView.reloadData()
        if editingStyle == .delete {
            movieController?.deleteMovie(at: indexPath.row)
            sortTitlesAlphabetically()
        }
    }
    
    
    // IBOutlets & Properties
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    var movieController: MovieController?
    var moviesSorted: [Movie] = []
    var moviesToShow: [Movie] = [] { didSet { tableView.reloadData() }}
    
}
