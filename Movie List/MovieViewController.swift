//
//  MovieViewController.swift
//  Movie List
//
//  Created by Craig Belinfante on 5/31/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieViewController: UIViewController {
    
    var delegate: AddMovieDelegate?
    
    @IBOutlet weak var tableView: UITableView!
    
    var movies: [Movie] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "" {
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
    return movies.count
   }

   func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    guard let cell = tableView.dequeueReusableCell(withIdentifier: "movieCell", for: indexPath) as? MovieTableViewCell else {
        return UITableViewCell()
    }
    self.tableView = tableView
    let movie = movies[indexPath.row]
    cell.movie = movie

    return cell
   }
}

extension MovieViewController: AddMovieDelegate {
    func movieWasAdded(_ movie: Movie) {
        _ = navigationController?.popViewController(animated: false)
        movies.append(movie)
        tableView.reloadData()
    }

}

protocol AddMovieDelegate {
    func movieWasAdded(_ movie: Movie)
}
