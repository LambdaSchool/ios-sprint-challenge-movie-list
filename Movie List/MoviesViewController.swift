//
//  MoviesViewController.swift
//  Movie List
//
//  Created by Hunter Oppel on 3/20/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MoviesViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var movieList: [Movie] = [Movie(name: "The Empire Strikes Back")]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tableView.dataSource = self
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

extension MoviesViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell  else {
            fatalError("Table View did not return a MovieTableViewCell")
        }
        
        cell.movie = movieList[indexPath.row]
        
        return cell
    }
    
    
}
