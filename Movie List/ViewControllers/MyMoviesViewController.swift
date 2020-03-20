//
//  MyMoviesViewController.swift
//  Movie List
//
//  Created by Marissa Gonzales on 3/20/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MyMoviesViewController: UIViewController {
    
    // Dummy Data
    var myMovies: [Movie] = [Movie(name: "Joe Dirt", seen: true)]
    
    
    // Outlets
    @IBOutlet weak var myMoviesTableView: UITableView!
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        
        // Do any additional setup after loading the view.
    }
    
    // Segue
  
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    

}

   
extension MyMoviesViewController: UITableViewDataSource {
    
     // Set number of Rows in Section
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        myMovies.count    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MyMovieCell", for: indexPath)
            as? MyMoviesTableViewCell else {
                fatalError("Cell is not a MyMovieCell")
        }
        
        let movie = myMovies[indexPath.row]
        
        cell.movieNameLabel.text = movie.name
        
        
        return cell
    }
   
    
}
    
extension MyMoviesViewController: NewMovieDelegate {
    func movieWasAdded(movie: Movie) {
        myMovies.append(movie)
        myMoviesTableView.reloadData()
    }
    
    
}


