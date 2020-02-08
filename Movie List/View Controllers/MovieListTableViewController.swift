//
//  MovieListTableViewController.swift
// Movie List
//

import UIKit

class MovieListViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var movies: [Movie] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddMovieModalSegue" {
            if let addMovieVC = segue.destination as? AddMovieViewController {
                addMovieVC.delegate = self
            }
        }
    }
}

extension MovieListViewController: UITableViewDataSource {
    

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell else { return UITableViewCell() }
        
        let movie = movies[indexPath.row]
        cell.movie = movie
//        cell.delegate = self
        
        return cell
    }
}

extension MovieListViewController: AddMovieDelegate {

    func movieWasAdded(_ movie: Movie) {
        movies.append(movie)
//        dismiss(animated: true, completion: nil)
        tableView.reloadData()
    }
}

//extension MovieListViewController: ToggleSeenDelegate {
//
//func isSeenButtonTapped(movie: Movie) {
//     //   guard let indexPath = tableView.indexPath(for: cell) else { return }
//    do {
//        guard let index = try movies.firstIndex(where: movie) else { return }
//
//        movies[index].seen = movie.seen
//    } catch {
//
//    }
//}
//
//
//}
