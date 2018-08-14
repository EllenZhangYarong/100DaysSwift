//
//  DetailViewController.swift
//  TabbedPageStudy
//
//  Created by 张亚荣 on 2018/8/14.
//  Copyright © 2018年 EllenAndAngel. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var userName: String?
    var userPassword: String?
    
    @IBOutlet weak var lblEmail: UILabel!
    
    @IBOutlet weak var lblPassword: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblEmail.text = userName
        lblPassword.text = userPassword
        
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
