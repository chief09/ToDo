//
//  ToDoItem.swift
//  ToDo
//
//  Created by Cyberjaya 17 iTrain on 12/09/2017.
//  Copyright © 2017 Newera. All rights reserved.
//

import UIKit

class ToDoItem: NSObject {
    var itemName : String
    var itemDesc : String
    var itemPlace : String
    var completed : Bool
    
    init(itemName : String, itemDesc : String, itemPlace : String, completed : Bool){
        self.itemName = itemName
        self.itemDesc = itemDesc
        self.itemPlace = itemPlace
        self.completed = completed
    }
    
    
}
