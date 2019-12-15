import UIKit

class MovieViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.dataSource = self
        tableView.delegate = self
        tableView.reloadData()
        
    }
    
func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return Model.shared.movieNamesCount()
    }

let reuseIdentifier = "cell"

func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath)
    cell.textLabel?.text = Model.shared.movieName(at: indexPath.row)
    return cell
}

func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
    guard editingStyle == .delete else { return }
    Model.shared.removeMovieNames(at: indexPath.row)
    tableView.deleteRows(at: [indexPath], with: .fade)
}
    
    @IBAction func editTable(_ sender: Any) {
        tableView.setEditing(true, animated: true)
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(stopEditingTable(_:)))
    }
    
    @objc
    func stopEditingTable(_ sender: Any) {
        tableView.setEditing(false, animated: true)
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .edit, target: self, action: #selector(editTable(_:)))
    }
    
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        Model.shared.moveMovieNames(from: sourceIndexPath.row, to: destinationIndexPath.row)
        tableView.moveRow(at: sourceIndexPath, to: destinationIndexPath)
    }

}
