//
//  MovieListViewController.swift
//  Movie List
//
//  Created by Jeremy Taylor on 11/30/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieListViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    var movies: [Movie] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.delegate = self
        
        // Load saved movies
        loadMovieList()
    }
    

    
    // MARK: - Navigation

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddMovieSegue" {
            guard let destinationVC = segue.destination as? AddMovieViewController else { return }
            
            destinationVC.delegate = self
        }
    }
    
    // MARK: Persistence
    
    func documentsDirectory() -> URL {
      let paths = FileManager.default.urls(for: .documentDirectory,
                                            in: .userDomainMask)
      return paths[0]
    }

    func dataFilePath() -> URL {
      return documentsDirectory().appendingPathComponent(
                                      "Movie.plist")
    }
    
    func saveMovieList() {
      // 1
      let encoder = PropertyListEncoder()
      // 2
      do {
        // 3
        let data = try encoder.encode(movies)
        // 4
        try data.write(to: dataFilePath(),
                  options: Data.WritingOptions.atomic)
        // 5
      } catch {
        // 6
        print("Error encoding movie array: \(error.localizedDescription)")
      }
    }
    
    func loadMovieList() {
      
      let path = dataFilePath()
      
      if let data = try? Data(contentsOf: path) {
        
        let decoder = PropertyListDecoder()
        do {
          movies = try decoder.decode([Movie].self,
                                     from: data)
        } catch {
          print("Error decoding movie array: \(error.localizedDescription)")
        }
      }
    }
}

extension MovieListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell else { fatalError("Can't dequeue a MovieTableViewCell") }
        
        let movie = movies[indexPath.row]
        cell.movie = movie
        cell.delegate = self
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            movies.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            saveMovieList()
        } 
    }
}

extension MovieListViewController: UITableViewDelegate {
    
}

extension MovieListViewController: AddMovieDelegate {
    func movieWasAdded(_ movie: Movie) {
        movies.append(movie)
        tableView.reloadData()
        saveMovieList()
        navigationController?.popViewController(animated: true)
    }
}

extension MovieListViewController: MovieStatusChangedDelegate {
    func toggleStatusforMovie(_ movie: Movie) {
        movie.hasBeenSeen.toggle()
        saveMovieList()
        tableView.reloadData()
    }
}
