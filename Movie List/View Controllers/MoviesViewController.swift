//
//  MoviesViewController.swift
//  Movie List
//
//  Created by Karen Rodriguez on 2/21/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MoviesViewController: UIViewController {

    
    @IBOutlet weak var moviesTV: UITableView!
    
    var movies: [Movie] = [Movie(name: "test", isSeen: false)]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        moviesTV.dataSource = self
        moviesTV.delegate = self
    }
    

  
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "AddMovieSegue" {
            guard let addMovieVC = segue.destination as? AddMovieViewController else { fatalError() }
            addMovieVC.delegate = self
        }
        
    }

}

// Extended functionality


extension MoviesViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "movieCell", for: indexPath) as? MovieTableViewCell else {fatalError()}
        
        cell.movie = movies[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            movies.remove(at: indexPath.row)
            moviesTV.reloadData()
        }
        else if editingStyle == .insert {
            let alert = UIAlertController(title: "Edit movie title", message: "", preferredStyle: .actionSheet)
            alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
            alert.addTextField(configurationHandler: { textfield in
                textfield.text = self.movies[indexPath.row].name
            })
            alert.addAction(UIAlertAction(title: "Save", style: .default, handler: { _ in
                if var text = alert.textFields![0].text {
                    self.movies[indexPath.row].name = text
                    self.moviesTV.reloadData()
                }
                
                }))
        }
    }
    
    
}

extension MoviesViewController: AddMovieDelegate {
    func movieWasAdded(_ movie: Movie) {
        movies.append(movie)
        dismiss(animated: true, completion: nil)
        moviesTV.reloadData()
    }
    
    
}
