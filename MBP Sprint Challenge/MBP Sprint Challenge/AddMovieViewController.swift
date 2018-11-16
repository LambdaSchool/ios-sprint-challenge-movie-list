import UIKit

class AddMovieViewController: UIViewController {
    
    
    @IBOutlet weak var textView: UITextField!
    
    
    @IBAction func addMovie(_ sender: Any) {
        guard let text = textView.text, !text.isEmpty else { return }
        Model.shared.addMovie(text)
        textView.text = ""
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

