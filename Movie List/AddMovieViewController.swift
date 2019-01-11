import UIKit

class AddMovieViewController: UIViewController {
    
    @IBOutlet weak var textFieldOutlet: UITextField!
    @IBOutlet weak var addMovieOutlet: UIButton!
    
    @IBAction func addMovieAction(_ sender: Any) {
        guard let text = textFieldOutlet.text, !text.isEmpty else { return }
        Model.shared.addMovie(text)
        textFieldOutlet.text = nil
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}
