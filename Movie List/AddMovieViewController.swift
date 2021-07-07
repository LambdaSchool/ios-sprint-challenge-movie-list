import UIKit

class AddMovieViewController: UIViewController {
    
    //outlets
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func add(_ sender: Any) {
        guard let text = textField.text,
            !text.isEmpty else {return}
        
        Model.shared.addMovie(text)
        textField.text = nil
    }
    
}
