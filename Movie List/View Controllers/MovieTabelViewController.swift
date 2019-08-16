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
        
        movieList.append(Movie(name: "Lion King"))
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

}

extension MovieTabelViewController: AddMovie {
    func movieAdded(_ movie: Movie) {
        movieList.append(movie)
        dismiss(animated: true, completion: nil)
        tableView.reloadData()
    }
}

extension MovieTabelViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath)
        
        let movie = movieList[indexPath.row]
        
        cell.textLabel?.text = movie.name
        if (movie.hasSeen) {
            cell.detailTextLabel?.text = "Seen"
        } else {
            cell.detailTextLabel?.text = "Not Seen"
        }
        
        return cell
    }
}
