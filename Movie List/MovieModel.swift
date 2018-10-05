import UIKit

class PaintingModel: NSObject, UITableViewDataSource, MovieTableViewCellDelegate {
    
    
   // var paintings: [Painting] = []
  //
//    override init() {
//        for i in 1...12 {
//            let imageString = ("Image\(i)")
//            guard let image = UIImage(named: imageString) else { return }
//            let painting = Painting(image: image)
//            paintings.append(painting)
//        }
//    }
//
    weak var tableView: UITableView?
    
    func tappedLikedButton(on cell: MovieTableViewCell) {
        guard let indexPath = tableView?.indexPath(for: cell)
            else { fatalError("Non-existent cell!!??") }
        
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
        guard let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier) as?
            MovieTableViewCell else {
                fatalError("Could not instantiate guaranteed cell type")
        }
        
        cell.delegate = self
        
       //cell.movieView.image = movies[indexPath.row].image
        
        let title = "👍"
        cell.likeButton?.setTitle(title, for: .normal)
        cell.likeButton.alpha = movies[indexPath.row].isLiked ? 1.0 : 0.33
        // cell.swatchView = UIImage(image: UIImage)
        
         let movie = movies[indexPath.row]
        return cell
    }
}
