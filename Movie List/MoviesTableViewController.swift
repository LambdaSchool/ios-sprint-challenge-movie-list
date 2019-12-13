//
//  MoviesTableViewController.swift
//  Movie List
//
//  Created by Jorge Alvarez on 12/13/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MoviesTableViewController: UIViewController {

    
    @IBOutlet weak var tableView: UITableView!
    
    
    var moviesArray: [Movie] = [Movie(name: "Saw", seen: true),
                                Movie(name: "The Mist", seen: true),
                                Movie(name: "Ted", seen: false)]
    
    // segue called addMovieSegue


    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Add later
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "addMovieSegue" {
            guard let addMovieVC = segue.destination as? AddMovieViewController else {return}
            addMovieVC.delegate = self
        }
        
//        if segue.identifier == "AddFriendModalSegue" {
//            guard let addFriendVC = segue.destination as? AddFriendViewController else {return}
//            // sets up the TVC as the delegate or employee of the add friend view controller
//            addFriendVC.delegate = self
//        }
        
        
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    

}

extension MoviesTableViewController: UITableViewDataSource,  UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return moviesArray.count
    }
    
    // what to put in each CUSTOM cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieTableViewCell", for: indexPath) as? MovieTableViewCell else {fatalError("oops")}
        
        let movie = moviesArray[indexPath.row]
        cell.movie = movie
        return cell
    }
    
    
//    guard let cell = tableView.dequeueReusableCell(withIdentifier: "FriendCell", for: indexPath) as? FriendTableViewCell else {fatalError("well shit")}
//
//    let friend = friends[indexPath.row]
//    cell.friend = friend // this would trigger didSet so we dont need to call cell.updateViews()
//    // cell.updateViews() if we didn't have didSet
//    return cell
    
    
}

extension MoviesTableViewController: AddMovieDelegate {
    func movieWasAdded(movie: Movie) {
            moviesArray.append(movie)
            tableView.reloadData() // updates tableView
        }
}
