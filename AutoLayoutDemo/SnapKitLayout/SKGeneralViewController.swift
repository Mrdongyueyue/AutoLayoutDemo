//
//  SKGeneralViewController.swift
//  AutoLayoutDemo
//
//  Created by 董知樾 on 2017/3/27.
//  Copyright © 2017年 董知樾. All rights reserved.
//

import UIKit

class SKGeneralViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "SnapKit常规布局"
        view.backgroundColor = .white
        
        let blueView = UIView()
        blueView.backgroundColor = UIColor.hexValue(0x40a0ff)
        view.addSubview(blueView)
        blueView.snp.makeConstraints { (make) in
            make.top.equalTo(self.topLayoutGuide.snp.bottom).offset(20)
            make.leading.equalTo(20)
            make.trailing.bottom.equalTo(-20)
        }
        
        let redView = UIView()
        redView.backgroundColor = UIColor.hexValue(0xfd84ea)
        blueView.addSubview(redView)
        redView.snp.makeConstraints { (make) in
            make.top.equalTo(20)
            make.bottom.equalTo(-20)
            make.leading.equalTo(20)
            make.trailing.equalTo(-20)
        }
        
        ///leading 和 left 的区别：通常情况下，leading就是left，两者之间没有什么区别，但是在特殊地区，排版是从右至左的，即leading为right，当APP需要作这些特殊适配时，如果使用的leading和trailing，系统会自动转换，left和right则不能。而且在IB中默认的是使用的leading和trailing，与官方保持一致，是一种较好的编程习惯
        
    }
    

}
