//
//  TodoModel.swift
//  DOTO
//
//  Created by LIBEXTMAC on 3/30/18.
//  Copyright © 2018 Lorraine. All rights reserved.
//

import Foundation
var todoList: [String]?

func saveData(todoList:[String]){
    UserDefaults.standard.set(todoList,  forKey: "todoList")
    
}
func fetchData() -> [String]?{
    if let todo = UserDefaults.standard.array(forKey: "todoList") as? [String]{
        return todo
    }
    else{
        return nil
    }
}
