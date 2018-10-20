
import UIKit

class ResultsTableViewController: UITableViewController, MovieControllerProtocol {
    var movieController: MovieController?
    
    var movies = [Movie]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieController?.movies.count ?? 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? ResultsTableViewCell,
            let movie = movieController?.movies[indexPath.row] else {return UITableViewCell()}
        
        cell.textLabel?.text = movie.name
        
        return cell
    }
    
    //this is supposed to toggle the seen button...
    func tappedSeenButton(on cell: ResultsTableViewCell) {
        guard let indexPath = cell.indexPath else {return}
        movies[indexPath.row].isSeen.toggle()
        
        switch movies[indexPath.row].isSeen {
        case true:
            cell.seenButton.setTitle("Seen", for: .normal)
        case false:
            cell.seenButton.setTitle("Not Seen", for: .normal)
        }
    }
    
    
    //this is supposed to swipe to delete
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        // Only handle deletions
        guard editingStyle == .delete else { return }

        // Update model then refresh view

        if (editingStyle == .delete){
            guard (movieController?.movies[indexPath.row]) != nil else {return}
            movieController?.movies.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
        //tableView.dataSource = movieController! .....
    }
    
}
