import UIKit

class ShowViewController: UIViewController , UITableViewDelegate, UITableViewDataSource {

//     navigationController?.popViewController(animated: true)
//
//    var model: Model?
//
//    let tableView = Model.item
    
    @IBOutlet weak var tableView: UITableView!
//
    override func viewWillAppear(_ animated: Bool) {
                super.viewWillAppear(animated)
                tableView.dataSource = self
                tableView.delegate = self
                tableView.reloadData()
            }
//
    let reuseIdentifier = "cell"

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Model.shared.itemCount()
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath)
        cell.textLabel?.text = Model.shared.item(at: indexPath.row)
        return cell
    }

    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        guard editingStyle == .delete else { return }
        Model.shared.removeValue(at: indexPath.row)
        tableView.deleteRows(at: [indexPath], with: .fade)

    }

    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        Model.shared.moveItem(from: sourceIndexPath.row, to: destinationIndexPath.row)
        tableView.moveRow(at: sourceIndexPath, to: destinationIndexPath)
    }

}
//
//

