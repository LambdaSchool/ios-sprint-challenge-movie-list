//
//  MovieTableViewController.swift
//  Movie List
//
//  Created by Nihal Erdal on 3/20/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewController: UIViewController {
    
    var movies : [Movie] = [Movie(name: "Parasite", hasSeen: false)]

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self

        // Do any additional setup after loading the view.
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
        if segue.identifier == "AddMovieModelSegue" {
            
            guard let addMovieVC = segue.destination as? AddMovieViewController else {return}
            
            addMovieVC.delegate = self
        }
    }
    


}

    extension MovieTableViewController : UITableViewDataSource {
        
         func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
             movies.count
         }
        
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell else {
                fatalError("Error")
            }
            
            let movie = movies[indexPath.row]
            
            cell.movieNameLabel.text = movie.name
            
            return cell
        }
    
}

extension MovieTableViewController : NewMovieDelegate {
    func newMovieWasCreated(movie: Movie) {
        movies.append(movie)
        dismiss(animated: true, completion: nil)
        tableView.reloadData()
    }
}

