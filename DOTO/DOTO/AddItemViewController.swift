//
//  AddItemViewController.swift
//  DOTO
//
//  Created by LIBEXTMAC on 3/30/18.
//  Copyright © 2018 Lorraine. All rights reserved.
//
import UIKit
//import Foundation

class AddItemViewController: UIViewController{
    
    
    @IBOutlet weak var itemTextField: UITextField!
    
    
    @IBAction func addItem(_ sender: Any) {
        if (itemTextField.text != nil) && itemTextField.text != ""{
            todoList?.append(itemTextField.text!)
            itemTextField.text = ""
        }
    }
    
}
