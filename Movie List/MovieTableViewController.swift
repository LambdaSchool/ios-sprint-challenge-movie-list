import UIKit

class MoviesTableViewController: UITableViewController, MovieControllerProtocol, MovieTableCellDelegate {
    var movieController: MovieController?
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        tableView.reloadData()
    }
    
    func updateCell(for cell: MovieTableViewCell) {
        guard let indexPath = tableView.indexPath(for: cell),
            let movie = movieController?.movies[indexPath.row] else {return}
        
        movieController?.update(movie: movie)
        tableView.reloadRows(at: [indexPath], with: .automatic)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieController?.movies.count ?? 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? MovieTableViewCell,
            let movie = movieController?.movies[indexPath.row] else {return UITableViewCell()}
        
        cell.updateViews(movie: movie)
        
        cell.delegate = self
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            guard let movie = movieController?.movies[indexPath.row] else {return}
            
            movieController?.deleteMovie(movie: movie)
            
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
    
    
}
