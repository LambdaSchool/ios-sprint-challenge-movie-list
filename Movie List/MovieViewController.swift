import UIKit


class MovieViewController: UIViewController, MovieControllerProtocol {
    var movieController: MovieController?

    @IBOutlet weak var name: UITextField!
    

    @IBAction func submitButton(_ sender: Any) {
        guard let text = name.text else {return}
        movieController?.create(name: text, isSeen: false)
        name.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}
