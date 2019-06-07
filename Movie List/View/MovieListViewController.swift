//
//  EnterMovieViewController.swift
//  Movie List
//
//  Created by Jake Connerly on 6/7/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieListViewController: UIViewController {
    var movieController = MovieController()
    //
    // MARK: - Outlets
    //
    @IBOutlet weak var plusButton: UIBarButtonItem!
    @IBOutlet weak var tableView: UITableView!
    
    //
    // MARK: - Actions
    //
   
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
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

extension MovieListViewController: UITableViewDelegate {
    
}
extension MovieListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieController.favoriteMoviesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: <#T##IndexPath#>) as? MovieListTableViewCell else { return UITableViewCell() }
        let movie = movieController.favoriteMoviesArray[indexPath.row]
        
    }
    
    
}
