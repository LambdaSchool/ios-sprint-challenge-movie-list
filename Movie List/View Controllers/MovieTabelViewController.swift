//
//  MovieTabelViewController.swift
//  Movie List
//
//  Created by Jordan Christensen on 8/16/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTabelViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var movieList: [Movie] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        
        if (loadData().count > 0) {
            movieList = loadData()
        }
        
        // Do any additional setup after loading the view.
    }
    
    func saveData() {
        let encodedData = NSKeyedArchiver.archivedData(withRootObject: movieList)
        UserDefaults.standard.set(encodedData, forKey: "movies")
        
    }

    func loadData() -> [Movie] {
        if let data = UserDefaults.standard.data(forKey: "movies"), let myMovieList = NSKeyedUnarchiver.unarchiveObject(with: data) as? [Movie] {
            return myMovieList
        } else {
            print("There is an issue")
            return []
        }
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddMovieShowSegue" {
            if let newMovieVC = segue.destination as? AddMovieViewController {
                newMovieVC.delegate = self
            }
        }
    }

}

extension MovieTabelViewController: AddMovie {
    func movieAdded(_ movie: Movie) {
        movieList.append(movie)
        navigationController?.popViewController(animated: true)
        tableView.reloadData()
        saveData()
    }
}

extension MovieTabelViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell else { return UITableViewCell() }
        
        cell.movie = movieList[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            movieList.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            saveData()
        }
    }
}
