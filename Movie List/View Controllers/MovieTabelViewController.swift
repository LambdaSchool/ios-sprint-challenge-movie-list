//
//  MovieTabelViewController.swift
//  Movie List
//
//  Created by Jordan Christensen on 8/16/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTabelViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    
    
    var movieList: [Movie] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        
        movieList.append(Movie(name: "Lion King"))
        movieList.append(Movie(name: "21 Jump Street"))
        // Do any additional setup after loading the view.
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddMovieShowSegue" {
            if let newMovieVC = segue.destination as? AddMovieViewController {
                newMovieVC.delegate = self
            }
        }
    }

}

extension MovieTabelViewController: AddMovie {
    func movieAdded(_ movie: Movie) {
        movieList.append(movie)
        navigationController?.popViewController(animated: true)
        tableView.reloadData()
    }
}

extension MovieTabelViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell else { return UITableViewCell() }
        
        cell.movie = movieList[indexPath.row]
        
        return cell
    }
}
