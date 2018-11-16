import UIKit

class MovieListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    // this controller needs:
    // conform to UITableViewDataSource and UITableViewDelegate"
    // assignments in viewDidLoad
    // minimal
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // assign the tableView data source and delegate here
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.reloadData()
 
    }
// TableView functions
    
    @IBOutlet weak var tableView: UITableView!
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return MovieModel.shared.movieCount()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let reuseIdentifier = "movieCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath)
        let movie = MovieModel.shared.movie(at: indexPath.row)
        
        cell.textLabel?.text = movie
   
        return cell
    }
    
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        MovieModel.shared.moveMovie(from: sourceIndexPath.row, to: destinationIndexPath.row)
        tableView.moveRow(at: sourceIndexPath, to: destinationIndexPath)
    }
    
// add MAGIC DELETE on SWIPE function in tableView
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        guard editingStyle == .delete else { return }
        
        MovieModel.shared.removeMovie(at: indexPath.row)
        
        tableView.deleteRows(at: [indexPath], with: .automatic)
        

        
        }
    }
    
    
    
    
    
    




    
        
