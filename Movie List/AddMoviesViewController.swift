//
//  AddMoviesViewController.swift
//  Movie List
//
//  Created by Cameron Dunn on 1/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation
import UIKit

class AddMovieViewController : UIViewController, UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = recentMovies[indexPath.row].name
        return cell!
    }
    
    var recentMovies : [Movie] = []
    @IBOutlet weak var tableView : UITableView!
    @IBOutlet weak var textField : UITextField!
    @IBAction func AddMovie(_ sender: Any) {
        let movie = Movie()
        movie.name = textField.text!
        movie.timeAdded = Date()
        Model.shared.addMovie(movieToAdd: movie)
        textField.text = ""
        recentMovies.append(movie)
        sortRecentMovies()
        tableView.reloadData()
    }
    override func viewDidLoad() {
        Model.shared.loadMovies()
        sortRecentMovies()
        tableView.dataSource = self
        tableView.delegate = self
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(recentMovies.count > 10){
        return 10
        }else{
            return recentMovies.count
        }
    }
    func sortRecentMovies(){
        recentMovies = Model.shared.movieArray.sorted(by: {$0.timeAdded > $1.timeAdded})
    }
    
}
