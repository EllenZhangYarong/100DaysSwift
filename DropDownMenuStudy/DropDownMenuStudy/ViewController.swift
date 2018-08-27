//
//  ViewController.swift
//  DropDownMenuStudy
//
//  Created by 张亚荣 on 2018/8/27.
//  Copyright © 2018年 EllenAndAngel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var cityButtons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func handleSelection(_ sender: UIButton) {
        
        cityButtons.forEach{ (button) in
            UIView.animate(withDuration: 0.3, animations: {
                button.isHidden = !button.isHidden
                self.view.layoutIfNeeded() //Button enter from "select a city" butoon bottom not from its top
            })
        }
    }
    
    enum Cities: String{
        case boston = "Boston"
        case newYork = "New York City"
        case LosAngels = "Los Angels"
        case sanFrancisco = "San Francisco"
    }
    
    @IBAction func cityButtonTapped(_ sender: UIButton) {
        guard let title = sender.currentTitle, let city = Cities(rawValue: title) else {
            return
        }
        switch city {
        case .boston:
            print("Boston")
        case .newYork:
            print("New York")
        case .LosAngels:
            print("Los Angels")
        case .sanFrancisco:
            print("San Francisco")

        }
    }
    
}

