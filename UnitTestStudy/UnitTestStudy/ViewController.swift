//
//  ViewController.swift
//  UnitTestStudy
//
//  Created by 张亚荣 on 2018/8/18.
//  Copyright © 2018年 EllenAndAngel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func isNumberEven(num: Int) -> Bool {
        if num%2 == 0 {
            return true
        }else{
            return false
        }
    }
}

