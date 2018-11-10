import Foundation
import UIKit

class AddViewController: UIViewController {
    
    
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func add(_ sender: Any) {
        guard let text = textField.text, !text.isEmpty else { return }
        Model.shared.addMovie(text)
        textField.text = nil
     }
}
    
    


