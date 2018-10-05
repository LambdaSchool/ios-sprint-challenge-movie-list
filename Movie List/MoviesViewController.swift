import UIKit

class MoviesViewController: UIViewController, UITextFieldDelegate{
    @IBOutlet weak var movieTitle: UILabel!
    
        var movies: [String] = ["Kung Fu Panda", "August Rush", "Yours, Mine, and Ours", "Cheaper By the Dozen", "I Love Lucy"]
    
        override func viewDidLoad () {
            super.viewDidLoad()
        }
    @IBAction func seenButtonTapped(_ sender: Any) {
        

    }
    
    func insertNewMovieTitle() {
        
        movies.append(movieTitle.text!)
        
        let indexPath = IndexPath(row: movies.count - 1, section: 0)
    
            }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            let movieTitle = movies[indexPath.row]
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "Movie's")
            return cell
            
        
        }
    


}
