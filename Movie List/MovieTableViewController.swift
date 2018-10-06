import UIKit

class MovieTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, MovieControllerProtocol, MovieTableViewCellDelegate {
    var movieController: MovieController?
    
    
    func updateCell(for cell: MovieTableViewCell) {
        guard let indexPath = movieTableView.indexPath(for: cell),
            let movie = movieController?.movies[indexPath.row] else {return}
        
        movieController?.updateMovie(movie: movie)
        movieTableView.reloadRows(at: [indexPath], with: .automatic)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieController?.movies.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? MovieTableViewCell,
            let movie = movieController?.movies[indexPath.row] else {return UITableViewCell()}
        
        cell.delegate = self
        
        return cell
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
