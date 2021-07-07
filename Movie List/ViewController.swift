
import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let reuseIdentifier = "cell"
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        tableView?.dataSource = self
        tableView?.delegate = self
        tableView?.reloadData()
        //print("OMG tableView why are you nil wtf?!")
        //Kept getting fatal error on these until I tried optional chaining. Not really sure
        //why it is needed here but not in the similar ToDo list guided project.
        //All I know is that it now works great, so I'm gonna go with it.
        //However, I would appreciate an explaination of what is going on here...
        
    }

    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBAction func add(_ sender: Any) {
        
        guard let text = textField.text, !text.isEmpty else { return }
        
        Model.shared.addMovie(text)
        textField.text = nil
        
        tableView?.insertRows(at: [IndexPath(row: Model.shared.movieCount() - 1, section: 0)], with: .top)
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Model.shared.movieCount()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath)
        
        cell.textLabel?.text = Model.shared.movie(at: indexPath.row)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        // Swipe-to-delete
        guard editingStyle == .delete else { return }
        
        Model.shared.removeMovie(at: indexPath.row)
        tableView.deleteRows(at: [indexPath], with: .automatic)
    }
        // Rearrange rows
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {

        tableView.setEditing(true, animated: true)
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(stopEditingTable(_:)))
        Model.shared.moveMovie(from: sourceIndexPath.row, to: destinationIndexPath.row)
        
    }

        // fun barButton stuff
    @IBAction func editTable(_ sender: Any) {
        tableView.setEditing(true, animated: true)
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(stopEditingTable(_:)))
    }
    
    @objc
    func stopEditingTable(_ sender: Any) {
        tableView.setEditing(false, animated: true)
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .edit, target: self, action: #selector(editTable(_:)))
        
    }
    
    
    
    
}
