//
//  ViewController.swift
//  sport
//
//  Created by Dakeza Samuel on 2021/11/13.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate  {
    @IBOutlet weak var header: UILabel!
    
    let sportNames = ["Baseball", "Basketball", "Football", "Other"]
    let sportImages = ["baseball", "basketball", "football", "other"]
    var sportIsLikes = Array(repeating:false, count: 4)
    var isLikes = Bool

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sportNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "datacell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)

        // Configure the cell...
        cell.textLabel?.text = sportNames[indexPath.row]
        cell.imageView?.image = UIImage(named: self.sportImages[indexPath.row])

        return cell
    }
    /*
    func tableView(_tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        let footer = _tableView.viewWithTag(10) as! UILabel
        footer.text = "I like: " + sportNames[indexPath.row]
    }*/
    override func viewDidAppear(_ animated: Bool) {
        print ("appear!!")
    }
    override func viewDidDisappear(_ animated: Bool) {
        print ("disappear!!!")
    }

   //swipe-to-left
   func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
            
            let likeAction = UIContextualAction(style: .normal, title: "Like") { (action, sourceView, completionHandler) in
               //get the selected cell
               //set the accessoryType of the selected cell to be checked
               //set the cell to be selected in the array
               //call the function: self. checkSelection()
            let cell = tableView.cellForRow(at: indexPath)
                cell?.accessoryType = .checkmark
            completionHandler(true)
            }
                
            let swipeConfiguration = UISwipeActionsConfiguration(actions: [likeAction])
            
            return swipeConfiguration
        }
    func checkSelection() {

         //Check the selection state of each cell
                //If the cell is selected, append the ball’s name to a result string
        //display the result string value on the footer of the table view
       if sportNames
        footer.text = "I like: " + sportNames[indexPath.row]
        }
       }





