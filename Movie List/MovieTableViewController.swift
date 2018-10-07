import UIKit

class MovieTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, MovieControllerProtocol, MovieTableViewCellDelegate {
    var movieController: MovieController?
    
    
    func updateCell(on cell: MovieTableViewCell) {
        guard let indexPath = movieTableView.indexPath(for: cell),
            let movie = movieController?.movies[indexPath.row] else {return}
        
        movieController?.updateMovie(movie: movie)
        movieTableView.reloadRows(at: [indexPath], with: .automatic)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieController?.movies.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath)
        
        guard let movieCell = cell as? MovieTableViewCell else { return cell }
        
        let movie = movieController?.movies[indexPath.row]
        movieCell.movie = movie
        movieCell.delegate = self
        
        return movieCell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        movieTableView.dataSource = self
        movieTableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            guard let movie = movieController?.movies[indexPath.row] else {return}
            movieController?.deleteMovie(movie: movie)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
    
    @IBOutlet weak var movieTableView: UITableView!
    
    
}
