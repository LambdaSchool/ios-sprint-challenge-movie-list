import UIKit

class MovieTableViewCell: DisplayMoviesTableViewController {

    @IBAction func seenOrNotAction(_ sender: Any) {
        tableView.setEditing(true, animated: true)
        DisplayMoviesTableViewController.cell.seenOrNotAction = UIButtonItem
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(stopEditingTable(_:)))
    }
    
    @objc
    override func stopEditingTable(_ sender: Any) {
        tableView.setEditing(false, animated: true)
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .edit, target: self, action: #selector(editAction(_:)))
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
//
//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//
//        // Configure the view for the selected state
//    }
}
