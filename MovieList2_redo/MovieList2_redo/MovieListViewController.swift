//
//  MovieListViewController.swift
//  MovieList2_redo
//
//  Created by Craig Belinfante on 7/8/20.
//  Copyright © 2020 Craig Belinfante. All rights reserved.
//

import UIKit

class MovieListViewController: UIViewController, UITableViewDelegate {
    @IBOutlet weak var tView: UITableView!
    
    var movieList: [Movie] = []
    var delegate: AddMovie?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tView.dataSource = self
       // updateViews()
        // Do any additional setup after loading the view.
    }
    
   
    
   
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "xyz" {
            if let destinationViewController = segue.destination as?
                AddMovieViewController {
                destinationViewController.delegate = self
            }
        }
    }
    /*
     // In a storyboard-based application, you  often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
    
}

extension MovieListViewController: UITableViewDataSource, AddMovie {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? MovieTableViewCell else {
            return UITableViewCell()
        }
        let movie = movieList[indexPath.row]
        cell.movie = movie
        return cell
    }
    
    func movieAdded(_ movie: Movie) {
        _ = navigationController?.popViewController(animated: false)
        movieList.append(movie)
        tView.reloadData()
    }
}
