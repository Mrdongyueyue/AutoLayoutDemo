//
//  SKIntrinsicContentSizeView.swift
//  AutoLayoutDemo
//
//  Created by 董知樾 on 2017/3/29.
//  Copyright © 2017年 董知樾. All rights reserved.
//

import UIKit

class SKIntrinsicContentSizeView: UIView {

    var useIntrinsic = true
    var label = UILabel()
    var size : CGSize? {
        didSet {
            useIntrinsic = false
            invalidateIntrinsicContentSize()
        }
    }
    
    override var intrinsicContentSize: CGSize {
        get {
            if useIntrinsic {
                return CGSize(width: UIViewNoIntrinsicMetric, height: UIViewNoIntrinsicMetric)
            } else {
                return size!
            }
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = UIColor.hexValue(0x40a0ff)
        let description = "Intrinsic Content Size 固有尺寸：在AutoLayout中，当开发者没有指定控件的尺寸时，控件会使用Intrinsic Content Size来计算自己的尺寸，UILabel，UIButton，设置了image的UIImageView，由子控件约束支撑的UIView等，都可以根据Intrinsic Content Size来计算自己的尺寸"
        
        label.backgroundColor = UIColor.hexValue(0xf8f8f8)
        label.textColor = UIColor.hexValue(0x666666)
        label.numberOfLines = 0
        addSubview(label)
        label.font = UIFont.systemFont(ofSize: 14)
        label.snp.makeConstraints { (make) in
            make.edges.equalTo(UIEdgeInsetsMake(10, 10, 10, 10))
        }
        label.text = description
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
}
