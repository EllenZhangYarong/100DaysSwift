//
//  FirstViewController.swift
//  TabbedPageStudy
//
//  Created by 张亚荣 on 2018/8/14.
//  Copyright © 2018年 EllenAndAngel. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    var userName: String?
    var userPassword: String?
    
    @IBAction func onLogoutTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        print(userName!)
        print(userPassword!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let detailViewController = segue.destination as? DetailViewController{
            detailViewController.userName = userName
            detailViewController.userPassword = userPassword
        }
    }


}

