import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    // Enter text, add movie when "Add Movie" is tapped
    @IBOutlet weak var textField: UITextField!
    
    // Lists all movies
    @IBOutlet weak var tableView: UITableView!
    
    @IBAction func addMovie(_ sender: Any) {
        guard let text = textField.text, !text.isEmpty else { return }
        Model.shared.addItem(text) // add movie title
        textField.text = nil // remove title
        tableView.reloadData()
        tableView.insertRows(at: [IndexPath(row:
            Model.shared.itemCount() - 1, section: 0)], with: .top)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        tableView.dataSource = self
        tableView.delegate = self
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Model.shared.itemCount()
    }
    
    let reuseIdentifier = "cell"
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath)
        cell.textLabel?.text = Model.shared.item(at: indexPath.row)
        return cell
    }
    
    // Delete movie
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        // *Only* delete movie
        guard editingStyle == .delete else { return }
        
        Model.shared.removeItem(at: indexPath.row)
        // tableView.reloadData()
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
        Model.shared.moveItem(from: sourceIndexPath.row, to: destinationIndexPath.row)
        tableView.moveRow(at: sourceIndexPath, to: destinationIndexPath)
    }
    
}

