import UIKit

class MovieEntryViewController: UIViewController {
    
    
    @IBOutlet weak var field: UITextField!
    
    @IBAction func submitMovie(_ sender: Any) {
        
        guard let text = field.text, !text.isEmpty  else { return }
                let entry = Movie(name: text, isSeen: false)
                //MovieController.movies.append(entry)
            }
        }


