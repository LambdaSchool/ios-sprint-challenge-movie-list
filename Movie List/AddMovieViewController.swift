import UIKit

class AddMovieViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func add(_ sender: Any) {
            guard let text = textField.text, !text.isEmpty else { return }
            Model.shared.addMovieNames(text)
            textField.text = nil
    }
}
