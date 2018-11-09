import Foundation
import UIKit

class MovieViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var movieText: UITextField!
    
    @IBOutlet var tableView: UITableView!
    
    @IBAction func add(_ sender: Any) {
        
        guard let text = movieText.text, !text.isEmpty else { return }
        
        Model.shared.addMove(text)
        
        movieText.text = nil
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Model.shared.movieCount()
    }

    
    let reuseIdentifier = "movieCell"
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath)
        cell.textLabel?.text = Model.shared.movie(at: indexPath.row)
        return cell
    }
    
    private func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowat indexPath: IndexPath) {
        
        guard editingStyle == .delete else { return }
        
        Model.shared.removeMovie(at: indexPath.row)
        
        tableView.deleteRows(at: [indexPath], with: .fade)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    @IBAction func edit(_ sender: Any) {
        tableView.setEditing(true, animated: true)
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(stopEditingTable(_:)))
    }
    
    @objc
    func stopEditingTable(_ sender: Any) {
        tableView.setEditing(false, animated: true)
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .edit, target: self, action: #selector(edit(_:)))
    }

    
    
    
    
}
