//
//  MovieTableViewController.swift
//  Movie List
//
//  Created by Malik Barnes on 12/13/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var movies: [Movie] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
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

     extension MovieTableViewController: UITableViewDelegate, UITableViewDataSource {
    
       func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
       }
    
          func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath)
               as? MovieTableViewCell else { fatalError("The cell is not a MovieTableViewCell") }
           
           let movie = movies[indexPath.row]
           
           // This would trigger the didSet so we don't need to call cell.updateViews() afterwards
           cell.movie = movie
           
           return cell
       }
}
