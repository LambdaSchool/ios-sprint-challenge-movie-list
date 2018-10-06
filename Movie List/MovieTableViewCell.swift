import UIKit

protocol MovieTableViewCellDelegate: class {
    func updateCell(for cell: MovieTableViewCell)
}

class MovieTableViewCell: UITableViewCell {
    
    weak var delegate: MovieTableViewCellDelegate?
    
    func updateViews() {
        guard let movie = movie else { return }
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
    
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    
    @IBOutlet weak var movieName: UILabel!
    @IBOutlet weak var hasBeenSeen: UIButton!
}
