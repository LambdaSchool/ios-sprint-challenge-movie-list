import UIKit

class addMovieViewController: UIViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "background.png")
        backgroundImage.contentMode = UIView.ContentMode.scaleAspectFill
        self.view.insertSubview(backgroundImage, at: 0)
        
        // Didn't have time to play around with the image view.
        //self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background.png")!)
    }
    

    
    @IBOutlet weak var textField: UITextField!
    
    // Add Movie Button Function
    @IBAction func add(_ sender: Any) {
        guard let text = textField.text, !text.isEmpty else {return}
        
        // Add to model
        Model.shared.addMovie(text)
        
        // Remove the entry from the text field
        textField.text = nil
    }
}
