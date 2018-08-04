//
//  UsersTableViewCell.swift
//  LearnAlamofireAndSwiftyJSONSecond
//
//  Created by 张亚荣 on 2018/8/4.
//  Copyright © 2018年 EllenAndAngel. All rights reserved.
//

import UIKit

class UsersTableViewCell: UITableViewCell {

    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
