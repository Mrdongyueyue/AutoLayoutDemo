//
//  SKIntrinsicSzieViewController.swift
//  AutoLayoutDemo
//
//  Created by 董知樾 on 2017/3/29.
//  Copyright © 2017年 董知樾. All rights reserved.
//

import UIKit

class SKIntrinsicSizeViewController: UIViewController {

    let descriptionLabel = UILabel()
    var intrinsicView : SKIntrinsicContentSizeView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "自有尺寸-IntrinsicSize"
        view.backgroundColor = .white
        
        let description = "Intrinsic Content Size 固有尺寸：在AutoLayout中，当开发者没有指定控件的尺寸时，控件会使用Intrinsic Content Size来计算自己的尺寸，UILabel，UIButton，设置了image的UIImageView，由子控件约束支撑的UIView等，都可以根据Intrinsic Content Size来计算自己的尺寸"
        
        descriptionLabel.backgroundColor = UIColor.hexValue(0xf8f8f8)
        descriptionLabel.textColor = UIColor.hexValue(0x666666)
        descriptionLabel.numberOfLines = 0
        view.addSubview(descriptionLabel)
        descriptionLabel.font = UIFont.systemFont(ofSize: 14)
        descriptionLabel.snp.makeConstraints { (make) in
            make.leading.equalTo(view.layoutMarginsGuide)
            make.center.equalTo(view)
        }
        descriptionLabel.text = description
        
        intrinsicView = SKIntrinsicContentSizeView(frame: .zero)
        view.addSubview(intrinsicView)
        intrinsicView.snp.makeConstraints { (make) in
            make.leading.trailing.equalTo(view.layoutMarginsGuide)
            make.top.equalTo(descriptionLabel.snp.bottom).offset(10)
        }
        
        ///调用此方法，可以使用自定义的固有尺寸
//        intrinsicView.size = CGSize(width: 375, height: 300)
    }

    

}
