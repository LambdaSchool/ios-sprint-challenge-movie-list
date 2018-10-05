import UIKit

protocol MovieTableCellDelegate: class {
    func updateCell(for cell: MovieTableViewCell)
}

class MovieTableViewCell: UITableViewCell {
    
    weak var delegate: MovieTableCellDelegate?
    
    func updateViews(movie: Movie) {
        
        movieName.text = movie.name
        if movie.hasBeenSeen == true {
            hasBeenSeen.setTitle("Seen", for: .normal)
        } else {
            hasBeenSeen.setTitle("Unseen", for: .normal)
        }
    }
    
    @IBAction func changeSeenStatus(_ sender: Any) {
        delegate?.updateCell(for: self)
    }
    
    @IBOutlet weak var movieName: UILabel!
    @IBOutlet weak var hasBeenSeen: UIButton!
}
