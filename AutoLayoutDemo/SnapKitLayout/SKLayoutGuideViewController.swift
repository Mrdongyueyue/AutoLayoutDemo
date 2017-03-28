//
//  SKLayoutGuideViewController.swift
//  AutoLayoutDemo
//
//  Created by 董知樾 on 2017/3/28.
//  Copyright © 2017年 董知樾. All rights reserved.
//

import UIKit

class SKLayoutGuideViewController: UIViewController {

    var leftLabel = UILabel()
    var rightLabel = UILabel()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "SnapKit-UILayoutGuide"
        view.backgroundColor = .white
        
        let layoutGuide = UILayoutGuide()
        view.addLayoutGuide(layoutGuide)
        layoutGuide.snp.makeConstraints { (make) in
            make.center.equalTo(view)
        }
        
        leftLabel.backgroundColor = UIColor.hexValue(0xf8f8f8)
        leftLabel.textColor = UIColor.hexValue(0x666666)
        view.addSubview(leftLabel)
        leftLabel.font = UIFont.systemFont(ofSize: 12)
        leftLabel.snp.makeConstraints { (make) in
            make.top.leading.bottom.equalTo(layoutGuide)
        }
        
        rightLabel.backgroundColor = UIColor.hexValue(0x666666)
        rightLabel.textColor = UIColor.hexValue(0xf8f8f8)
        view.addSubview(rightLabel)
        rightLabel.font = UIFont.systemFont(ofSize: 14)
        rightLabel.snp.makeConstraints { (make) in
            make.leading.equalTo(leftLabel.snp.trailing).offset(12)
            make.trailing.equalTo(layoutGuide)
            make.centerY.equalTo(leftLabel)
        }
        
        leftLabel.text = "左左左左左左"
        rightLabel.text = "右右右右"
        
    }
    
}
