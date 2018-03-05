import UIKit
class ItemsViewController : UITableViewController{
    var todoItems : [String] = ["Walk dog", "work on 690 hw", "study for midterm"]
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todoItems.count
    }
    
    @IBAction func addItemsButtonPressed(_ sender: Any) {
        todoItems.append("relax")
        tableView.reloadData()
    }
    
    //delegate method table view is asking view controller to give it a cell to be displayed
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //find element in fruits array we want to display
        let item = todoItems[indexPath.row]
        //asking table view for new fruits cell, create a cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "ItemsCell")!
        cell.textLabel?.text = item
        return cell
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(todoItems[indexPath.row])
        
        performSegue(withIdentifier: "ItemsTransition", sender: self)
    }
    //passing data to new view controller
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //optional destination vew controller
      // if let destination = segue.destination as? DisplayItemViewController{
         //   destination.display.text =
       // }
    }
    
    }

