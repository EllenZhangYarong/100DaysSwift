//
//  CustomCell.swift
//  CustomTableViewCell
//
//  Created by 张亚荣 on 2018/8/17.
//  Copyright © 2018年 EllenAndAngel. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {
    
    var message : String?
    var mainImage : UIImage?
    
    var messageView : UITextView = {
        var textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.isScrollEnabled = false
        return textView
    }()
    
    var mainImagView : UIImageView = {
        var imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.addSubview(mainImagView)
        self.addSubview(messageView)
        
        mainImagView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        mainImagView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        mainImagView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        mainImagView.bottomAnchor.constraint(equalTo: self.messageView.topAnchor).isActive = true
        mainImagView.widthAnchor.constraint(equalToConstant: frame.width).isActive = true
        mainImagView.heightAnchor.constraint(equalToConstant: 250).isActive = true
        
        messageView.topAnchor.constraint(equalTo: self.mainImagView.bottomAnchor).isActive = true
        messageView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        messageView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        messageView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        
        //2
//        mainImagView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
//        mainImagView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
//        mainImagView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
//        mainImagView.widthAnchor.constraint(equalToConstant: 150).isActive = true
//        mainImagView.heightAnchor.constraint(equalToConstant: 100).isActive = true
//
//        messageView.leftAnchor.constraint(equalTo: self.mainImagView.rightAnchor).isActive = true
//        messageView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
//        messageView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
//        messageView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        if let message = message{
            messageView.text = message
        }
        
        if let image = mainImage{
            mainImagView.image = image
        }
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented!")
    
    }
}
