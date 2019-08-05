import Foundation


// This is the Movie that we will be editing with the text and sending over to the MovieTableViewCell.
struct Movie {
    var name: String?
    var watched: Bool = false
}

// You need to take the information input by the user in the textField in AddMoviesViewController and add it to the name aspect of the movie struct you created above.  Then take that movie and add it to the table view.  Once youre done there it needs to be added to the table view cell.  You need segues between the two view controllers, action for the button when tapped to show not seen/seen, and the textField needs to reset once the add movie button is tapped.
