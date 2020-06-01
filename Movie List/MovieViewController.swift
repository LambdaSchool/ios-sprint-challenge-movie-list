//
//  MovieViewController.swift
//  Movie List
//
//  Created by Craig Belinfante on 5/31/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieViewController: UIViewController, addMovieDelegate {
    func movieWasAdded(_ movie: Movie) {
    }
    

    
    @IBOutlet weak var tableView: UITableView!
    
    var movie: [Movie] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Add Movie" {
            if let destinationViewController = segue.destination as? AddMovieViewController {
                destinationViewController.delegate = self
            }
        }
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    

}


extension MovieViewController : UITableViewDataSource, UITableViewDelegate {
func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return movie.count
   }

   func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell else {
        return UITableViewCell()
    }
    self.tableView = tableView
    let movieNames = movie[indexPath.row]
    cell.movieNames = movie

    return cell
   }
}
