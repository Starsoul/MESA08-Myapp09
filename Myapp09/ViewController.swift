//
//  ViewController.swift
//  Myapp09
//
//  Created by 江宗益 on 2017/9/19.
//  Copyright © 2017年 江宗益. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var items = ["item 1", "item 2","item 3","item 4","item 5","item 6","item 7",
                 "item 8", "item 9","item 10","item 11","item 12","item 13","item 14",
                 "item 15", "item 16","item 17","item 18","item 19","item 20","item 21"]
    
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("select:\(items[indexPath.row])")
    }
    
    public func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath){
        print("deselect:\(items[indexPath.row])")
    }
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return items.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        if indexPath.row % 3  == 0 {
            cell.accessoryType = .detailDisclosureButton
        }
        cell.textLabel?.text = items[indexPath.row]
        
        return cell
    }
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }

 

}

