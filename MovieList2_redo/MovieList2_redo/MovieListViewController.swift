//
//  MovieListViewController.swift
//  MovieList2_redo
//
//  Created by Craig Belinfante on 7/8/20.
//  Copyright © 2020 Craig Belinfante. All rights reserved.
//

import UIKit

class MovieListViewController: UIViewController {
    
    var movieList: [Movie] = []
    var delegate: AddMovieDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    
   
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "add" {
            if let destinationViewController = segue.destination as?
                AddMovieViewController {
                destinationViewController.delegate = self
            }
        }
    }
    /*
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
    
}

extension MovieListViewController: UITableViewDataSource, UITableViewDelegate, AddMovieDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? MovieTableViewCell else {
            return UITableViewCell()
        }
        let movie = movieList[indexPath.row]
        cell.movie = movie
        return cell
    }
    
    func movieAdded(_ movie: Movie) {
        _ = navigationController?.popViewController(animated: false)
        movieList.append(movie)
    }
}
protocol AddMovieDelegate {
    func movieAdded(_ movie: Movie)
}
