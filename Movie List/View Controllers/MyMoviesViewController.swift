//
//  MyMoviesViewController.swift
//  Movie List
//
//  Created by Stuart on 11/16/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//


import UIKit

class MyMoviesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate, MovieControllerProtocol, MovieTableViewCellDelegate {
    
    
    func seenButtonWasTapped(on cell: MovieTableViewCell) {
        guard let indexPath = tableView.indexPath(for: cell) else { return }
        
        let movie = moviesToShow[indexPath.row]
        
        movieController?.toggleHasSeen(movie)
        tableView.reloadRows(at: [indexPath], with: .automatic)
        
    }
    
    
    @objc func viewWasTapped(sender: UITapGestureRecognizer? = nil) {
        searchBar.endEditing(true)
    }
    
    
    // Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.delegate = self
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(viewWasTapped(sender:)))
        view.addGestureRecognizer(tapGestureRecognizer)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
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
    
    
    // IBOutlets & Properties
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    var movieController: MovieController?
    var moviesSorted: [Movie] = []
    var moviesToShow: [Movie] = [] { didSet { tableView.reloadData() }}
    
}
