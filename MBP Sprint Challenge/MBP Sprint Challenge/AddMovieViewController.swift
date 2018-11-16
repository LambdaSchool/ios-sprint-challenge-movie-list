import UIKit

class AddMovieViewController: UIViewController {
    
    
    @IBOutlet weak var textView: UITextField!
    
    
    @IBAction func addMovie(_ sender: Any) {
        guard let text = textField.text, !text.isEmpty else { return }
        Model.shared.addMovie(text)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
}

