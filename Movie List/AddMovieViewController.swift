import UIKit

class AddMovieViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    
    
    // Add text to the Model moive array and remove antry for the text field
    @IBAction func add(_ sender: Any) {
        guard let movie = textField.text, !movie.isEmpty else {return}
        Model.shared.addMovie(movie)
        Model.shared.saveData()
    }
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        
        Model.shared.moveMovie(indexOrigin: sourceIndexPath.row, indexDestination: destinationIndexPath.row)
    }
    
}
 
