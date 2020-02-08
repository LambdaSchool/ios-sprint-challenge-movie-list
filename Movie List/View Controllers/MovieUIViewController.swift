//
//  MovieUIViewController.swift
//  Movie List
//
//  Created by LambdaSchoolVM_Catalina on 11/22/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieUIViewController: UIViewController {

    //ib outlet tableView
    
    @IBOutlet weak var tableView: UITableView!
    
    var movies: [Movie] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "movieDetailSegue" {
            if let AddMovieVC = segue.destination as? MovieAddViewController {
                AddMovieVC.delegate = self
            }
        }
    }
}

//table view data
extension MovieUIViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieListCell", for: indexPath) as? MoviesTableViewCell else { return UITableViewCell() }
        let flix = movies[indexPath.row]
        cell.flix = flix
        return cell
    }
    
}

extension MovieUIViewController: AddMovieDelegate {
    func movieWasAdded(_ flix: Movie) {
        movies.append(flix)
        tableView.reloadData()
    }
}

