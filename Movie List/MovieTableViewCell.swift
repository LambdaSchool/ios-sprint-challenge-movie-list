import UIKit

class MovieTableViewCell: UITableViewCell {
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var seenButton: UIButton!
    
    weak var delegate: MovieTableViewCellDelegate?
    
    @IBAction func toggleSeen(_ sender: Any) {
        delegate?.tappedSeenButton(on: self)
    }
    
}
