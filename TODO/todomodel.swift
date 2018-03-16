import Foundation
class TodoItems{
    var item: String
    var completed: Bool
    
    public init(item: String){
        self.item = item
        self.completed = false
    }
}
extension TodoItems
{
    public class func getMockData() -> [TodoItems]
    {
        return [
            TodoItems(item: "Milk"),
            TodoItems(item: "Chocolate"),
            TodoItems(item: "Light bulb"),
            TodoItems(item: "Dog food")
        ]
    }
}
	
