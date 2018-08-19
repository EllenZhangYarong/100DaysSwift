//
//  ViewController.swift
//  Magic8Ball
//
//  Created by 张亚荣 on 2018/8/19.
//  Copyright © 2018年 EllenAndAngel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
//    var ballArray = [#imageLiteral(resourceName: "ball1"), #imageLiteral(resourceName: "ball2"), #imageLiteral(resourceName: "ball3"), #imageLiteral(resourceName: "ball4"), #imageLiteral(resourceName: "ball5")]
    
        var ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    var randomBallNumber: Int = 0

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        newBallImage()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    @IBAction func btnAskPressed(_ sender: Any) {
        newBallImage()
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        newBallImage()
    }
    
    func newBallImage() {
        
        randomBallNumber = Int(arc4random_uniform(5))
//        imageView.image = ballArray[randomBallNumber]
        imageView.image = UIImage(named: ballArray[randomBallNumber])
    }
}

