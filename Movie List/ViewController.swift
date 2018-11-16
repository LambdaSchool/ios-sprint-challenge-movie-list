import UIKit

class ViewController: UIViewController {
    // Enter text, add movie when "Add Movie" is tapped
    
    @IBOutlet weak var textField: UITextField!
    // Lists all movies
    
    @IBAction func add(_ sender: Any) {
        
        guard let text = textField.text, !text.isEmpty else { return }
        Model.shared.addItem(text) // add movie title
        textField.text = nil // remove title
        
        
    }
}

