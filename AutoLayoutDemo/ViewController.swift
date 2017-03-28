//
//  ViewController.swift
//  AutoLayoutDemo
//
//  Created by 董知樾 on 2017/3/27.
//  Copyright © 2017年 董知樾. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    let IBLayoutButton = UIButton()
    let codeNativeLayoutButton = UIButton()
    let snapKitLayoutButton = UIButton()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "AutoLayout"
        
        IBLayoutButton.backgroundColor = UIColor.hexValue(0xbe1e32);
        IBLayoutButton.setTitle("IB布局", for: .normal)
        IBLayoutButton.setTitleColor(UIColor.hexValue(0xf8f8f8), for: .normal)
        IBLayoutButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 24)
        IBLayoutButton.layer.cornerRadius = 6
        IBLayoutButton.layer.masksToBounds = true
        view.addSubview(IBLayoutButton)
        IBLayoutButton.snp.makeConstraints { (make) in
            make.leading.equalTo(self.view.layoutMarginsGuide)
            make.top.equalTo(self.topLayoutGuide.snp.bottom).offset(10)
        }
        IBLayoutButton.addTarget(self, action: #selector(didClickIBLayoutButton(button:)), for: .touchUpInside)
        
        codeNativeLayoutButton.backgroundColor = UIColor.hexValue(0x40a0ff);
        codeNativeLayoutButton.setTitle("原生代码布局", for: .normal)
        codeNativeLayoutButton.setTitleColor(UIColor.hexValue(0xf8f8f8), for: .normal)
        codeNativeLayoutButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 24)
        codeNativeLayoutButton.layer.cornerRadius = 6
        codeNativeLayoutButton.layer.masksToBounds = true
        view.addSubview(codeNativeLayoutButton)
        codeNativeLayoutButton.snp.makeConstraints { (make) in
            make.trailing.equalTo(self.view.layoutMarginsGuide)
            make.top.equalTo(IBLayoutButton)
            make.leading.equalTo(IBLayoutButton.snp.trailing).offset(10)
            make.height.width.equalTo(IBLayoutButton)
        }
        codeNativeLayoutButton.addTarget(self, action: #selector(didClickCodeNativeLayoutButton(button:)), for: .touchUpInside)
        
        snapKitLayoutButton.backgroundColor = UIColor.hexValue(0xfd84ea);
        snapKitLayoutButton.setTitle("SnapKit代码布局", for: .normal)
        snapKitLayoutButton.setTitleColor(UIColor.hexValue(0xf8f8f8), for: .normal)
        snapKitLayoutButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 24)
        snapKitLayoutButton.layer.cornerRadius = 6
        snapKitLayoutButton.layer.masksToBounds = true
        view.addSubview(snapKitLayoutButton)
        snapKitLayoutButton.snp.makeConstraints { (make) in
            make.leading.trailing.equalTo(self.view.layoutMarginsGuide)
            make.top.equalTo(IBLayoutButton.snp.bottom).offset(10)
            make.bottom.equalTo(-10)
            make.height.equalTo(IBLayoutButton)
        }
        snapKitLayoutButton.addTarget(self, action: #selector(didSnapKitLayoutButton(button:)), for: .touchUpInside)
        
    }

    
    func didClickIBLayoutButton(button:UIButton) {
        navigationController?.pushViewController(IBLayoutViewController(), animated: true)
    }
    
    func didClickCodeNativeLayoutButton(button:UIButton) {
        navigationController?.pushViewController(CodeNativeLayoutViewController(), animated: true)
    }
    
    func didSnapKitLayoutButton(button:UIButton) {
        navigationController?.pushViewController(SnapKitLayoutViewController(), animated: true)
    }

}

