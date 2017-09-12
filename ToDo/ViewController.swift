//
//  ViewController.swift
//  ToDo
//
//  Created by Cyberjaya 17 iTrain on 12/09/2017.
//  Copyright © 2017 Newera. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet var tableView: UITableView!
    var itemArray : [ToDoItem] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let item1 = ToDoItem(itemName: "Item1", itemDesc: "desc1", itemPlace: "KL", completed: true)
        let item2 = ToDoItem(itemName: "Item2", itemDesc: "desc2", itemPlace: "Selangor", completed: false)
        let item3 = ToDoItem(itemName: "Item3", itemDesc: "desc3", itemPlace: "Pahang", completed: false)
        let item4 = ToDoItem(itemName: "Item4", itemDesc: "desc4", itemPlace: "Johor", completed: true)
        itemArray.append(item1)
        itemArray.append(item2)
        itemArray.append(item3)
        itemArray.append(item4)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = itemArray[indexPath.row].itemName
        cell.detailTextLabel?.text = "Description: \(itemArray[indexPath.row].itemDesc)  Location: \(itemArray[indexPath.row].itemPlace)"
        if itemArray[indexPath.row].completed == true{
            cell.imageView?.image = UIImage(named: "image1.png")
        }
        else {
            cell.imageView?.image = UIImage(named: "image2.png")
        }
        
        return cell
    }
    @IBAction func actionPressed(_ sender: Any) {
        let alertCtrl = UIAlertController(title: "Add Item", message: "Insert all the item details.", preferredStyle: .alert)
        let ok = UIAlertAction(title: "Submit", style: .default, handler: {(alert: UIAlertAction!) in
            var nameI = ""
            var locationI = ""
            var descriptionI = ""
        
            if let name = alertCtrl.textFields?.first?.text {
                nameI = name
            }
            if let location = alertCtrl.textFields?.last?.text {
                locationI = location
            }
            
            if let description = alertCtrl.textFields![1].text {
                descriptionI = description
            }
            self.itemArray.append(ToDoItem(itemName: nameI, itemDesc: descriptionI, itemPlace: locationI, completed: false))
            self.tableView.reloadData()
        })
        let cancel = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        alertCtrl.addAction(ok)
        alertCtrl.addAction(cancel)
        alertCtrl.addTextField{
            (textField) in textField.placeholder = "Item Name"
        }
        alertCtrl.addTextField{
            (textField) in textField.placeholder = "Description"
        }
        alertCtrl.addTextField{
            (textField) in textField.placeholder = "Location"
        }
        
        present(alertCtrl, animated: true, completion: nil)
    }
    
    
}

