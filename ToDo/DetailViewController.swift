//
//  DetailViewController.swift
//  ToDo
//
//  Created by Cyberjaya 17 iTrain on 13/09/2017.
//  Copyright © 2017 Newera. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var labelName: UILabel!
    @IBOutlet var image: UIImageView!
    @IBOutlet var labelDesc: UILabel!
    @IBOutlet var labelPlace: UILabel!
    var item : ToDoItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.labelName.text = item.itemName
        self.labelDesc.text = item.itemDesc
        self.labelPlace.text = item.itemPlace
        
        if item.completed {
            self.image.image = UIImage(named: "image1.png")
        }
        else {
            self.image.image = UIImage(named: "image2.png")
        }
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    

}
