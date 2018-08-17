//
//  ViewController.swift
//  CustomTableViewCell
//
//  Created by 张亚荣 on 2018/8/17.
//  Copyright © 2018年 EllenAndAngel. All rights reserved.
//

import UIKit

struct CellData{
    let image : UIImage?
    let message : String?
}

class TableViewController: UITableViewController {

    var data = [CellData]()
    let cellSpacingHeight: CGFloat = 5
    override func viewDidLoad() {
        super.viewDidLoad()
        
        data = [CellData.init(image: #imageLiteral(resourceName: "adventureland"), message: "Looking for a job ~ Looking for a job ~ Looking for a job ~ Looking for a job ~ Looking for a job ~ Looking for a job ~ "),CellData.init(image: #imageLiteral(resourceName: "adventureland"), message: "Looking for a job ~ Looking for a job ~ Looking for a job ~ Looking for a job ~ Looking for a job ~ Looking for a job ~ "),CellData.init(image: #imageLiteral(resourceName: "adventureland"), message: "Looking for a job ~ Looking for a job ~ Looking for a job ~ Looking for a job ~ Looking for a job ~ Looking for a job ~ "),CellData.init(image: #imageLiteral(resourceName: "adventureland"), message: "Looking for a job ~ Looking for a job ~ Looking for a job ~ Looking for a job ~ Looking for a job ~ Looking for a job ~ "),CellData.init(image: #imageLiteral(resourceName: "adventureland"), message: "Looking for a job ~ Looking for a job ~ Looking for a job ~ Looking for a job ~ Looking for a job ~ Looking for a job ~ "),CellData.init(image: #imageLiteral(resourceName: "adventureland"), message: "Looking for a job ~ Looking for a job ~ Looking for a job ~ Looking for a job ~ "),CellData.init(image: #imageLiteral(resourceName: "adventureland"), message: "Looking for a job ~ Looking for a job ~ Looking for a job ~ Looking for a job ~ Looking for a job ~ Looking for a job ~ ")]
        
        self.tableView.register(CustomCell.self, forCellReuseIdentifier: "customCell")
        self.tableView.rowHeight = UITableViewAutomaticDimension
        self.tableView.estimatedRowHeight = 200

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "customCell") as! CustomCell
        cell.mainImage = data[indexPath.row].image
        cell.message = data[indexPath.row].message
        cell.layoutSubviews()
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return cellSpacingHeight
    }
    
}

