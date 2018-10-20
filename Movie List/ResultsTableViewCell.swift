import UIKit


class ResultsTableViewCell: UITableViewCell {

    //should have an outlet for movie name label
    var movieController: MovieController?
    var indexPath: IndexPath?
    
    @IBOutlet weak var seenButton: UIButton!
    
    weak var delegate: ResultsTableViewCellDelegate?
    
    @IBAction func seenTapped(_ sender: Any) {
        delegate?.tappedSeenButton(on: self)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    

}
