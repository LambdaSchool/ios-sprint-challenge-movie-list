//
//  MainViewController.swift
//  MovieList
//
//  Created by Nick Nguyen on 1/24/20.
//  Copyright © 2020 Nick Nguyen. All rights reserved.
//

import UIKit

class MainViewController: UIViewController,AddMovieViewControllerDelegate {
    func didAddMovie(for movie: String) {
        movies.append(movie)
        mainTableView.reloadData() // Important
    }
    

 
    
    
    @IBOutlet weak var mainTableView: UITableView!
    
    var movies = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
          setUpNavBar()
    }
    

    @IBAction func addTapped(_ sender: UIBarButtonItem) {
        
    }
   
   
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == Helper.segueId {
            if let destVC = segue.destination as? AddMovieViewController {
                destVC.delegate = self
                
            }
        }
    }
    
    
    private func setUpNavBar() {
        navigationController?.navigationBar.prefersLargeTitles = true
    }

}


extension MainViewController: UITableViewDataSource,UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }

    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Helper.tableCellId, for: indexPath) as! CustomCell
        cell.textLabel?.text = movies[indexPath.row]
        cell.textLabel?.font = UIFont.systemFont(ofSize: 24)
        return cell
    }
    
    
}
