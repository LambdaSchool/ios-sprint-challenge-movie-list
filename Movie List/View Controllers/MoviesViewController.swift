//
//  MoviesViewController.swift
//  Movie List
//
//  Created by Karen Rodriguez on 2/21/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MoviesViewController: UIViewController {

    
    @IBOutlet weak var moviesTV: UITableView!
    
    var movies: [Movie] = [Movie(name: "test", isSeen: false)]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        moviesTV.dataSource = self
        moviesTV.delegate = self
    }
    

  
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    }

}

extension MoviesViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "movieCell", for: indexPath) as? MovieTableViewCell else {fatalError()}
        
        cell.movie = movies[indexPath.row]
        
        return cell
    }
    
    
}
