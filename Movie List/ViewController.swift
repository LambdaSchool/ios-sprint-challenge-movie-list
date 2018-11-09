import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func addMovie(_ sender: Any) {
        guard let text = textField.text, !text.isEmpty else { return }
        Model.shared.addMovie(text)
        textField.text = nil
        // TableViewController.tableView.insertRows(at: [IndexPath(row: Model.shared.movieCount() - 1, section: 0)], with: .top)
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // tableView.dataSource = self
        // tableView.delegate = self
        // tableView.reloadData()
    }
    
   
}
