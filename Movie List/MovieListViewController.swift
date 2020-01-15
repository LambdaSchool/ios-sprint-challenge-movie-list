//
//  MovieListViewController.swift
//  Movie List
//
//  Created by Kennon Keys Ward on 6/7/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit


protocol MovieListViewControlerDelegate: class {
    func seenButton(for view: MovieListViewController)
}

class MovieListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    
    var movieList: [Movie] = []
    
    weak var delegate: MovieListViewControlerDelegate?
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var movieLabel: UILabel!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieListViewController else { return UITableViewCell() }
        
        let movie = movieList[indexPath.row]
        
        cell.movie = movie
        
        return cell
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
  
    @IBAction func seenButtonTapped(_ sender: Any) {
        self.delegate?.seenButton(for: self)
    }
    
    @IBAction func addButtonTapped(_ sender: Any) {
    }
    
    private func updateViews() {
        guard let movie = movie else { return }
        movieLabel.text = movie.name
    }
    

}


extension MovieListViewController: MovieListViewControlerDelegate {
    func seenButton(for view: MovieListViewController) {
        self.title = "Seen"
    }
    
    
}
