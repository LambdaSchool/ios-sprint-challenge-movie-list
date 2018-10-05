import UIKit

protocol MovieTableCellDelegate: class {
    func updateCell(for cell: MovieTableViewCell)
}

class MovieTableViewCell: UITableViewCell {
    

    @IBAction func changeSeenStatus(_ sender: Any) {
    }
    @IBOutlet weak var movieName: UILabel!
    @IBOutlet weak var hasBeenSeen: UIButton!
}
