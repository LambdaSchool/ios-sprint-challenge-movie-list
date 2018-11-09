import UIKit

class AddMovieViewController: UIViewController {
    
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    
    // Add text to the Model moive array and remove antry for the text field
    @IBAction func add(_ sender: Any) {
        guard let text = textField.text,
            !text.isEmpty else {return}
        
        Model.shared.addMovie(text)
        textField.text = nil
    }
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        
        Model.shared.moveMovie(at: sourceIndexPath.row, to: destinationIndexPath.row)
    }
    
}
