//
//  TransitionViewController.swift
//  MultiCellSectionStudy
//
//  Created by 张亚荣 on 2018/8/21.
//  Copyright © 2018年 EllenAndAngel. All rights reserved.
//

import UIKit

class TransitionViewController: UIViewController {

    let checklist = ["Homework",
                     "Speech",
                     "Reading",
                     "IXL Math",
                     "Dish wash",
                     "Clean room"]

}

extension TransitionViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return checklist.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = checklist[indexPath.row]
        return cell
    }
}

extension TransitionViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(checklist[indexPath.row])
        performSegue(withIdentifier: "seque1", sender: nil)
    }
}


