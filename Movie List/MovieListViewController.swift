import UIKit

class MovieListTableViewContorller: UITableViewController {
    

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        tableView.reloadData()
    }
    
}
