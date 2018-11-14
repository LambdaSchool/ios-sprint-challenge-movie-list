import UIKit

class Model {
    
    static let shared = Model()
    var movies : [String] = []
    
    func addMovie(movie: String) {
        movies.append(movie)
        Model.shared.saveData()
        
    }
    func movie(at index: Int) -> String {
        return movies[index]
    }
    
    func movieCount () -> Int {
        return movies.count
    }
    
    func removeMovie (index: Int) {
        movies.remove(at: index)
        Model.shared.saveData()
        
    }
    
    func moveMovie(origin: Int, destination: Int) {
        let moveMovie = movies.remove(at: origin)
        movies.insert(moveMovie, at: destination)
        Model.shared.saveData()
    }
    let fileURL = URL(fileURLWithPath: NSHomeDirectory())
        .appendingPathComponent("Library")
        .appendingPathComponent("Movies")
        .appendingPathExtension("plist")
    
    func saveData() {
        try! (movies as NSArray).write(to: fileURL)
    }
    
    func loadData() {
        if let items = NSArray(contentsOf: fileURL) as? [String] {
            movies = items
        }
        
    }
    
    
    
    
    
    
    func movieComments() -> String {
       
        let commentArray : [String] = ["I don't know that one.", "Do you have any popcorn?", "Why no Elvis movies?", "No thanks, I will stick with Crocodile Hunter.", "You've gotta see The Princess Bride... way better than that movie!", "Shh! The movie is coming on!", "Nothing can beat Muppet Treasure Island... it is a classic!", "Why would you ever want to watch that?", "That movie is alright I guess.", "I do not even know you anymore.", "What a charming personality you must have."]
        let randomNumber = arc4random_uniform(UInt32(commentArray.count))
        var newString : String = ""
        for movie in movies {
            switch movie {
            case "The Princess Bride" :
                newString = "You have excellent taste in movies!"
            case "The Testaments" :
                newString =  "That is one of the best movies of all time!"
            case "Elf" :
                newString = "Will Ferrell was hilarious in that movie!"
            default:
                newString = commentArray[Int(randomNumber)]
            }
            
        }
        return newString
    }
    
}

