import UIKit

class TableViewCellController: UITableViewCell {
    
    @IBOutlet weak var toggleButton: UIButton!
    
    @IBAction func seenToggle(_ sender: Any) {
        if toggleButton.currentTitle == "Not Seen" {
            toggleButton.setTitle("Seen", for: .normal)
        } else if toggleButton.currentTitle == "Seen" {
            toggleButton.setTitle("Not Seen", for: .normal)
        }
        
        
    }
    
    
    
}
