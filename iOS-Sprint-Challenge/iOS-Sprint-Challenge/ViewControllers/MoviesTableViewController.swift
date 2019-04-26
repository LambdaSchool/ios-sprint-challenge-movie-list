//
//  MoviesTableViewController.swift
//  iOS-Sprint-Challenge
//
//  Created by Blair Holmgren on 4/26/19.
//  Copyright © 2019 Blair Holmgren. All rights reserved.
//

import UIKit

class MoviesTableViewController: UITableViewController, MovieControllerProtocol {
    var movieController: MovieController?
    
    override func viewDidLoad() {
        tableView.reloadData()
    }

    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return movieController?.movies.count ?? 0
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
       
        
        let movie = movieController?.movies[indexPath.row]
        
        cell.textLabel?.text = movie?.name
        
        
        
        return cell
    }
    

   

    
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            
        }    
    }
    

    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
     }
 

}
