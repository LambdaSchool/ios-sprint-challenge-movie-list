import UIKit

class TableViewController: NSObject, UITableViewDataSource, MovieTableViewCellDelegate {
    
    var movies: [Movie] = []
    
    override init() {
        for name in movies{
            movies.append(Movie(name: name))
    }
    weak var tableView: UITableView?
    
    func tappedAddButton(on cell: MovieTableViewCell) {
        guard let indexPath = tableView?.indexPath(for:cell)
            else { fatalError("Non-existent cell!!??")}
        
        movies[indexPath.row].isLiked.toggle()
        cell.likeButton.alpha = movies[indexPath.row].isLiked ? 1.0 : 0.33
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        self.tableView = tableView
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    let reuseIdentifier = "cell"
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier) as? MovieTableViewCell else {fatalError("Could not instantiate guaranteed cell type")
        }
        
        cell.delegate = self
        
        let movie = movies[indexPath.row]
        cell.nameLabel.text = movie.name
       
        
        return cell
        }
    }
}
