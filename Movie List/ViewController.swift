

import Foundation
import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
   
    let reuseIdentifier = "cell"
    
    // add the text in the field to our Model, display the result in Table View
    @IBAction func addMovie(_ sender: Any) {
        
        // test that the text exists and is not empty
        guard let text = textField.text, !text.isEmpty else { return }
        
        // add it to the model
        Model.shared.addItem(text)
        
        // remove the entry from the text field after it is added
        textField.text = nil
        
        // apply an insert row animation
        tableView.insertRows(at: [IndexPath(row: Model.shared.itemCount() - 1, section: 0)], with: .top)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Set up delegate and delegator
        // -- Delegator: tableView, Delegate: dataSource
        tableView.dataSource = self // Fatal error: I'm assuming this means that as I attempt to set the dataSource as the delegate, the dataSource is nil - I can't quite figure out why it's nil
        tableView.delegate = self
        tableView.reloadData()
    }
    
    // number of cells will be equal to the number of items entered by user
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Model.shared.itemCount()
    }
    
    // information the cells display will be the text entered by the user
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // get the cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = Model.shared.item(at: indexPath.row)
        
        return cell
    }
    
    // swipe-to-delete functionality
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        // enable the functionality
        guard editingStyle == .delete else { return }
        
        // update model and view with the change
        Model.shared.removeItem(at: indexPath.row)
        
        // delete row animation
        tableView.deleteRows(at: [indexPath], with: .fade
        )
        
    }
    
    // row-reordering capability
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        
        Model.shared.moveItem(from: sourceIndexPath.row, to: destinationIndexPath.row)
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
    
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var tableView: UITableView!
}
