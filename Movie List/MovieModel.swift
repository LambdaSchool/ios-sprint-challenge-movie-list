import Foundation

struct Movie:Comparable
{
	var name:String
	var watched:Bool

	static func <(lhs:Movie, rhs:Movie) -> Bool
	{
		return lhs.name < rhs.name
	}
}

