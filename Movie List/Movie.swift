import Foundation

class Movie {
    var name: String
    //var seen: String //change to bool
    var isSeen: Bool
   

    init(name: String,  isSeen: Bool = false) { //add isSeen: Bool = false
        self.name = name
        //self.seen = seen
        self.isSeen = isSeen
    }
    
    
}
