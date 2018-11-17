import UIKit

class AddViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var labelText: UILabel!
    
    @IBAction func addButton(_ sender: Any) {
        guard let text = textField.text, !text.isEmpty else { return }
        Model.shared.addItem(text)
        labelText.text = "You added \(text)"
        textField.text = nil
    }
}
