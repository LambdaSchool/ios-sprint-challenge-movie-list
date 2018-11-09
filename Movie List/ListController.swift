import UIKit

class ListController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    

    

    @IBOutlet weak var tableView: UITableView!
    
    
    let reuseIdentifier = "cell"
    
    
   
    
    
    

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Model.shared.numberOfMovies() - 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath)
        cell.textLabel?.text = Model.shared.movie(index: indexPath.row)
        return cell
    }
    
    
}
