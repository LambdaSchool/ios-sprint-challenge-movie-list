import UIKit

class ViewController: UIViewController/*, UITableViewDelegate, UITableViewDataSource */ {

    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBAction func add(_ sender: Any) {
        guard let text = textField.text, !text.isEmpty else { return }
        
        // Once you are here, `text` is assigned to a non-empty string
        
        Model.shared.addValue(text) // add to model
        textField.text = nil // remove the entry from the text field
    
        tableView.insertRows(at: [IndexPath(row: Model.shared.itemCount() - 1, section: 0)], with: .top)
    }
    
    
    
 /*   tableView.dataSource = self
    tableView.delegate = self
    tableView.reloadData() */
    
    let reuseIdentifier = "cell"
    
/*    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    } */
    
}

