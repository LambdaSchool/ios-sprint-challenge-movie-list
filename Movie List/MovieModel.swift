import UIKit

class PaintingModel: UIViewController, UITableViewDataSource, MovieTableViewCellDelegate {
    
    var movies: [Movie] = []
    
    weak var tableView: UITableView?
    
    let reuseIdentifier = "cell"
    
    func tappedSeenButton(on cell: MovieTableViewCell) {
        guard let indexPath = tableView?.indexPath(for: cell) else {
            fatalError("Non-existent cell my guy?")
        }
        
        movies[indexPath.row].isSeen.toggle()
        cell.seenButton.alpha = movies[indexPath.row].isSeen ? 1.0 : 0.33
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier) as? MovieTableViewCell else {
            fatalError("Could not instantiate guaranteed cell type")
        }
        cell.delegate = self
        
        cell.textField.text = movies[indexPath.row].title
        movies.append(Movie(title: cell.textField.text))
        let title = "👁"
        cell.seenButton?.setTitle(title, for: .normal)
        cell.seenButton.alpha = movies[indexPath.row].isSeen ? 1.0 : 0.33
        
        return cell
    }
    
}
