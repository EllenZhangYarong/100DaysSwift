//
//  HomePageTabBarController.swift
//  TabbedPageStudy
//
//  Created by 张亚荣 on 2018/8/14.
//  Copyright © 2018年 EllenAndAngel. All rights reserved.
//

import UIKit

class HomePageTabBarController: UITabBarController {

    var userName: String?
    var userPassword: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let viewControllers = viewControllers else{
            return
        }
        
        for viewController in viewControllers{
            if let homepageNavigationController = viewController as? HomePageNavigationController{
                if let detailViewController = homepageNavigationController.viewControllers.first as? FirstViewController{
                    detailViewController.userName = userName
                    detailViewController.userPassword = userPassword
                }
            }
        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
