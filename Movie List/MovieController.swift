
import Foundation
protocol MovieConsumer
{
	var movieController:MovieController! {get set}
}

class MovieController
{
	var movies:[Movie] = []
	var filteredMovies:[Movie] = []

	func add(_ movie:Movie)
	{
		movies.append(movie)
		movies.sort()
	}

	@discardableResult
	func create(_ name: String) -> Movie
	{
		let movie = Movie(name:name, watched:false)
		add(movie)
		return movie
	}

	func delete(index: Int)
	{
		// my gut tells me this should be much better than calling remove
		movies[index] = movies[movies.count - 1]
		movies.removeLast()
		movies.sort()
	}

	func updateFilter(_ filter:String)
	{
		let filter = filter.lowercased()
		filteredMovies.removeAll()
		for movie in movies {
			if movie.name.lowercased().range(of:filter) != nil {
				filteredMovies.append(movie)
			}
		}
		filteredMovies.sort()
	}
}
