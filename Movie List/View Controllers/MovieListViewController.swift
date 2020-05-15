//
//  MovieListViewController.swift
//  Movie List
//
//  Created by Richard Gibbs on 5/15/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieListViewController: UIViewController {

    @IBOutlet weak var movieTableView: UITableView!
    
    var movies: [Movie] = [Movie(movieName: "Django")]
    
    @IBAction func hasBeenSeen(_ sender: UIButton) {
        sender.isSelected.toggle()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        movieTableView.dataSource = self
    }
    


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "ADDMovieSegue" {
               let movieTVC = segue.destination as? AddMovieViewController
               
               movieTVC?.delegate = self
          
    
    }
    }

}

extension MovieListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MoviesCell", for: indexPath) as? MoviesTableViewCell else {
            fatalError("Cell identifier is wrong or the cell is not of expected type MoviesTableViewCell")
        }
        let movie = movies[indexPath.row]
        cell.movieTextField.text = movie.movieName
        cell.
        return cell
    }
    }
    


extension MovieListViewController: AddMovieDelegate {
    func movieWasCreated(movie: Movie) {
        movies.append(movie)
        movieTableView.reloadData()
    }
    
    
}
