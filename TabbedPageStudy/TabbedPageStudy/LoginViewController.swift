//
//  LoginViewController.swift
//  TabbedPageStudy
//
//  Created by 张亚荣 on 2018/8/14.
//  Copyright © 2018年 EllenAndAngel. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    
    @IBAction func onLoginTapped(_ sender: Any) {
        
//        let homepageTabController = storyboard?.instantiateViewController(withIdentifier: "HomePageTabBarController") as! HomePageTabBarController
//        
//        homepageTabController.selectedViewController = homepageTabController.viewControllers?[1]
//        
//        present(homepageTabController, animated: true, completion: nil)
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let homepageTabBarController = segue.destination as? HomePageTabBarController{
            homepageTabBarController.userName = tfEmail.text
            homepageTabBarController.userPassword = tfPassword.text
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

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
