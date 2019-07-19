//
//  MovieListViewController.swift
//  MovieListSprint
//
//  Created by admin on 7/19/19.
//  Copyright © 2019 admin. All rights reserved.
//

import UIKit

class MovieListViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    @IBAction func addMovieButton(_ sender: UIBarButtonItem) {
    }
    
    var movieList: [Movie] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
extension MovieListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieListCell", for: indexPath) as? MovieListTableViewCell else { return UITableViewCell()}
        let MovieList = movieList[indexPath.row]
        cell.MovieList = MovieList
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieList.count
    }
}

