//
//  MovieListViewController.swift
//  MovieListSprint
//
//  Created by admin on 7/19/19.
//  Copyright © 2019 admin. All rights reserved.
//

import UIKit


class MovieListViewController: UIViewController {
    
    var movieList: [Movie] = []
    
    @IBOutlet weak var tableView: UITableView!


    
    override func viewDidLoad() {
        super.viewDidLoad()
    

        
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddMovieModalSegue" {
            if let addMovieVC = segue.destination as? AddMovieViewController {
                addMovieVC.delegate = self
            }
        }
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
        let movies = movieList[indexPath.row]
        cell.Movie = movies
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieList.count
    }
    

}


extension MovieListViewController: AddMovieDelegate {
    
    func movieWasAdded( movie: Movie) {
        movieList.append(movie)
        dismiss(animated: true, completion: nil)
        tableView.reloadData()
    }
}

