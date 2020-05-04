//
//  MoviesViewController.swift
//  Movie List
//
//  Created by Juan M Mariscal on 2/7/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MoviesTableViewController: UIViewController, UITableViewDelegate {

    // MARK: IBOutlets
    
    @IBOutlet weak var tableView: UITableView!
    
    var movieArray: [Movie] = []
    var movieCell: MovieTableViewCell!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    

    // MARK: - Navigation


}

extension MoviesTableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell else { return UITableViewCell() }
        
        let movieLocation = movieArray[indexPath.row]
        cell.movie = movieLocation
        cell.delegate = self
     
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddMovieModalSegue" {
            let addMovieVC = segue.destination as! AddMovieViewController
            
            addMovieVC.delegate = self
        }
    }
    
    
}

extension MoviesTableViewController: MovieCellDelegate {
    func didTapMovieSeenBtn(movieBool: Bool) {
        if movieBool == true {
            movieCell.movie!.movieSeenBool = false
            movieCell.movieSeenBtn.titleLabel?.text = "Not Seen"
        } else if movieBool == false {
            movieCell.movie?.movieSeenBool = true
            movieCell.movieSeenBtn.titleLabel?.text = "Seen"
        }
    }
    
    
}

extension MoviesTableViewController: AddMovieDelegate {
    func movieWasAdded(_ movie: Movie) {
        movieArray.append(movie)
        //dismiss(animated: true, completion: nil)
        tableView.reloadData()
        print(movieArray.count)
    }
    
    
}
