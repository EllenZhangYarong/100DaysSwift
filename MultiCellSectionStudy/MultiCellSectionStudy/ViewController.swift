//
//  ViewController.swift
//  MultiCellSectionStudy
//
//  Created by 张亚荣 on 2018/8/21.
//  Copyright © 2018年 EllenAndAngel. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    var fruit = [["orange","apple","pear"],["watermelon","grape","lemon"],["banana","Here is two apples"]]
    let headerText = ["Fruit","I love","I hate"]
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBAction func sortButtonTapped(_ sender: Any) {
        
        print(fruit[0])
        fruit[0].sort()
        
//        reload the whole table view data
//        tableView.reloadData()
        
        let indexPath = IndexPath(row: 0, section: 0)
        
//        reload one cell
//        tableView.reloadRows(at: [indexPath], with: .fade)
        
//        reload section data
        tableView.reloadSections([0], with: .fade)

        print(fruit[0])
        
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return fruit.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruit[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()

        cell.textLabel?.text = fruit[indexPath.section][indexPath.row]
        print(indexPath)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return headerText[section]
    }


}

