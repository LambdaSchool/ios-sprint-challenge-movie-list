//
//  MovieListTableViewController.swift
//  Movie List
//
//  Created by Lambda_School_Loaner_241 on 2/7/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieListTableViewController: UIViewController {
    
    // Mark - IBOutlets
    @IBOutlet weak var movieTableView: UITableView!
    
     // Mark - Properties
        var m: [Movie] = []
        
        override func viewDidLoad() {
            super.viewDidLoad()

            // Do any additional setup after loading the view.
            
            self.movieTableView.delegate = self
            self.movieTableView.dataSource = self
        }
        
        
     

    }

    extension MovieListTableViewController: UITableViewDataSource {
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return m.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "NewMovieCell", for: indexPath) as? MovieTableViewCell else { return UITableViewCell() }
            
            let f = m[indexPath.row]
            
            cell.film = f
            
            return cell
        }
        
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
               if segue.identifier == "AddMovieSegue" {
                let addMovieVC = segue.destination as! AddNewMovieViewController
                   
                   addMovieVC.delegate = self
               }
           }
        
        
        
        
    }

extension MovieListTableViewController: AddMovieDelegate {
    func MovieWasCreated(_ mov: Movie) {
        self.m.append(mov)
        movieTableView.reloadData()
    }
    

    }
        
    

    extension MovieListTableViewController: UITableViewDelegate {
        
    }

