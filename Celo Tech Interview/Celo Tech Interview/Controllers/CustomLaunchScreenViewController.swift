//
//  CustomLaunchScreenViewController.swift
//  Celo Tech Interview
//
//  Created by Ellen Zhang on 7/11/19.
//  Copyright © 2019 Ellen Zhang. All rights reserved.
//

import Foundation
import UIKit

class CustomLaunchScreenViewController: UIViewController{

    @IBOutlet weak var toDoListLabel: UILabel!
    override func viewDidLoad() {
    super.viewDidLoad()
        
        toDoListLabel.layer.cornerRadius = 10
    }
    
}
