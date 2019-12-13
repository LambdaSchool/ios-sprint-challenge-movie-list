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
        
        movies = [Movie(name: "Test Movie")]
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
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
}

extension MovieListController: AddMovieDelegate {
    func movieWasAdded(_ movie: Movie) {
        if self.movies != nil {
            self.movies!.append(movie)
        } else {
            self.movies = [movie]
        }
        self.tableView.reloadData()
    }
}
