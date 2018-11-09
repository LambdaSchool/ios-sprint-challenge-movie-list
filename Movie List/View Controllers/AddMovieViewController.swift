import UIKit

class AddMovieViewController: UIViewController {
    
    
    @IBOutlet weak var addMovieTextField: UITextField!
    
    @IBAction func AddMovieButton(_ sender: Any) {
        guard let text = addMovieTextField.text, !text.isEmpty else { return }
        
        Model.shared.addMovie(text)
    }
    
}
