//
//  MovieListTableViewController.swift
//  Movie List
//
//  Created by Rick Wolter on 10/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieListTableViewController: UITableViewController,AddMovieDelegate {
   
    
    
    
    
    
    var movies = [Movie]()
    
    
 //   @IBOutlet weak var seenLabel: UIButton!
    
    
    
    
    
    
    
    
//    @IBAction func seenButton(_ sender: UIButton) {
//
//        if seenLabel.titleLabel?.text == "Not Seen"{
//
//            seenLabel.setTitle("Seen", for: .normal)
//        } else {
//            seenLabel.setTitle("Not Seen", for: .normal)
//        }
//    }
//
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func movieWasAdded(_ movie: Movie) {
        movies.append(movie)
        dismiss(animated: true, completion: nil)
        tableView.reloadData()
       }
    

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return movies.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath)
        
        let movie = movies[indexPath.row]
        cell.textLabel?.text = movie.name
       // let seenUpdate = movie.hasSeen ? "Seen" : "Not Seen"
        //seenLabel.setTitle(seenUpdate, for: .normal)
     
        return cell
    }
   
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    

  
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "AddMovieSegue" {
            if let addMovieVC = segue.destination as? AddMovieViewController {
                addMovieVC.addMovieDelegate = self
            }
        }
        
        
    }
    

}
