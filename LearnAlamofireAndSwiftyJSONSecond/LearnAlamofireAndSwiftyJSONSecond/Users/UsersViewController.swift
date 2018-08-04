//
//  UsersViewController.swift
//  LearnAlamofireAndSwiftyJSONSecond
//
//  Created by 张亚荣 on 2018/8/4.
//  Copyright © 2018年 EllenAndAngel. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class UsersViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var usersData:[UserModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.tableView.rowHeight = UITableViewAutomaticDimension
        self.tableView.estimatedRowHeight = 50
        self.tableView.register(UINib(nibName: "UsersTableViewCell", bundle: nil), forCellReuseIdentifier: "userCell")
        fetchUsersData()
    }
    
    func fetchUsersData() {
        DispatchQueue.main.async {
            Alamofire.request("https://raw.githubusercontent.com/arimunandar/API/master/users.json").responseJSON(completionHandler: {(response) in switch response.result{
            case .success(let value):
                let json = JSON(value)
//                print(json)
                let data = json["data"]
                data["users"].array?.forEach({(user) in
                    let user = UserModel(name: user["name"].stringValue, email: user["email"].stringValue)
                    self.usersData.append(user)
                })
                self.tableView.reloadData()
            case .failure(let error):
                print(error.localizedDescription)
                }
            })
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

extension UsersViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.usersData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "userCell", for: indexPath) as! UsersTableViewCell
        cell.nameLabel.text = self.usersData[indexPath.row].name
        cell.emailLabel.text = self.usersData[indexPath.row].email
        return cell
    
    }
    
}
