import UIKit

class MovieListTableViewCell: UITableViewCell {

    @IBOutlet weak var seenButtonTitle: UIButton!
    
    @IBAction func seenButton(_ sender: Any) {
        Model.shared.seen.toggle()
        
        let seenToggle = Model.shared.seen ? "Seen" : "Not Seen"
        seenButtonTitle.setTitle(seenToggle, for: .normal)
    }
    

}
