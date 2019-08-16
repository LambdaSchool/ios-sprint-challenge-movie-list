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
        
//        if (loadData().count > 0) {
//            movieList = loadData()
//        }
        
        // Do any additional setup after loading the view.
    }
    
//    func saveData() {
//        let defaults = UserDefaults.standard
//        defaults.set(movieList.count, forKey: "MovieListCount")
//
//        var stringArr: [String] = []
//        var boolArr: [Bool] = []
//
//        for x in 0...movieList.count-1 {
//            stringArr.append(movieList[x].name)
//            boolArr.append(movieList[x].hasSeen)
//        }
//        defaults.set(stringArr, forKey: "StringArray")
//        defaults.set(boolArr, forKey: "BoolArray")
//    }
//
//    func loadData() -> [Movie] {
//        let defaults = UserDefaults.standard
//        let count = UserDefaults.standard.integer(forKey: "MovieListCount")
//        guard let nameArr: [String] = defaults.array(forKey: "StringArray") as! [String]?, let boolArr: [Bool] = defaults.array(forKey: "BoolArray") as! [Bool]? else { return [] }
//
//        var myArray: [Movie] = []
//
//        for x in 0...count {
//            myArray.append(Movie(name: nameArr[x], hasSeen: boolArr[x]))
//        }
//        return myArray
//    }
    
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
//        saveData()
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
//            saveData()
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
        }
    }
}
