import UIKit

class MovieTableViewCell: UITableViewCell {
    
    @IBOutlet weak var movieName: UILabel!
    @IBOutlet weak var seenButton: UIButton!
    
    
    weak var delegate: MovieTableViewCellDelegate?
    
    
    @IBAction func movieConfirmedSeen(_ sender: Any) {
        delegate?.tappedSeenButton(on: self)
    }
    
    
}
