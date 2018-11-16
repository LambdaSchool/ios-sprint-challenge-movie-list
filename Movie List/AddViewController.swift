import UIKit

class AddViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func addButton(_ sender: Any) {
        guard let text = textField.text, !text.isEmpty else { return }
        Model.shared.addItem(text)
        textField.text = nil
    }
}
