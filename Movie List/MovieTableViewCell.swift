import UIKit

class MovieTableViewCell: UITableViewCell {
    
    
    weak var delegate: MovieTableViewCellDelegate?
    
    @IBAction func toggleSeen(_ sender: Any) {
        delegate?.tappedSeenButton(on: self)
    }
    
}
