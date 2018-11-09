

import Foundation
import UIKit

class ViewController: UIViewController {
    
    // add the text in the field to our Model, display the result in Table View
    @IBAction func addMovie(_ sender: Any) {
        
        // test that the text exists and is not empty
        guard let text = textField.text, !text.isEmpty else { return }
        
        // add it to the model
        
        // remove the entry from the text field after it is added
        
        // apply an insert row animation
    }
    
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var tableView: UITableView!
}
