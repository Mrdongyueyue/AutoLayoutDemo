//
//  SKHugCompressViewController.swift
//  AutoLayoutDemo
//
//  Created by 董知樾 on 2017/3/29.
//  Copyright © 2017年 董知樾. All rights reserved.
//

import UIKit

class SKHugCompressViewController: UIViewController {

    
    var hugLabel1 = UILabel()
    var compressResistanceLabel1 = UILabel()
    
    var hugLabel2 = UILabel()
    var compressResistanceLabel2 = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Content Hugging/Compression"
        view.backgroundColor = .white
        
        hugLabel1.backgroundColor = UIColor.hexValue(0xf8f8f8)
        hugLabel1.textColor = UIColor.hexValue(0x666666)
        view.addSubview(hugLabel1)
        hugLabel1.font = UIFont.systemFont(ofSize: 14)
        hugLabel1.snp.makeConstraints { (make) in
            make.leading.equalTo(view.layoutMarginsGuide)
            make.centerY.equalTo(view)
        }
        
        compressResistanceLabel1.backgroundColor = UIColor.hexValue(0x666666)
        compressResistanceLabel1.textColor = UIColor.hexValue(0xf8f8f8)
        view.addSubview(compressResistanceLabel1)
        compressResistanceLabel1.font = UIFont.systemFont(ofSize: 14)
        compressResistanceLabel1.snp.makeConstraints { (make) in
            make.leading.equalTo(hugLabel1.snp.trailing).offset(12)
            make.centerY.equalTo(hugLabel1)
            make.trailing.equalTo(view.layoutMarginsGuide)
        }
        
        hugLabel1.setContentCompressionResistancePriority(UILayoutPriorityDefaultLow, for: .horizontal)
        compressResistanceLabel1.setContentCompressionResistancePriority(UILayoutPriorityDefaultHigh, for: .horizontal)
        
        hugLabel1.text = "我是压缩压缩压缩压缩压缩压缩"
        compressResistanceLabel1.text = "我是拉伸拉伸拉伸拉伸拉伸拉伸"
        
        //2
        hugLabel2.backgroundColor = UIColor.hexValue(0xf8f8f8)
        hugLabel2.textColor = UIColor.hexValue(0x666666)
        hugLabel2.textAlignment = .center
        view.addSubview(hugLabel2)
        hugLabel2.font = UIFont.systemFont(ofSize: 14)
        hugLabel2.snp.makeConstraints { (make) in
            make.leading.equalTo(view.layoutMarginsGuide)
            make.centerY.equalTo(view).offset(20)
        }
        
        compressResistanceLabel2.backgroundColor = UIColor.hexValue(0x666666)
        compressResistanceLabel2.textColor = UIColor.hexValue(0xf8f8f8)
        compressResistanceLabel2.textAlignment = .center
        view.addSubview(compressResistanceLabel2)
        compressResistanceLabel2.font = UIFont.systemFont(ofSize: 14)
        compressResistanceLabel2.snp.makeConstraints { (make) in
            make.leading.equalTo(hugLabel2.snp.trailing).offset(12)
            make.centerY.equalTo(hugLabel2)
            make.trailing.equalTo(view.layoutMarginsGuide)
        }
        
        hugLabel2.setContentHuggingPriority(UILayoutPriorityDefaultHigh, for: .horizontal)
        compressResistanceLabel2.setContentHuggingPriority(UILayoutPriorityDefaultLow, for: .horizontal)
        
        hugLabel2.text = "我是拒绝拉伸"
        compressResistanceLabel2.text = "我是要拉伸"
    }
    

}
