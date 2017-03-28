//
//  SKScrollViewController.swift
//  AutoLayoutDemo
//
//  Created by 董知樾 on 2017/3/28.
//  Copyright © 2017年 董知樾. All rights reserved.
//

import UIKit

class SKScrollViewController: UIViewController {

    let scrollView = UIScrollView()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "SnapKit-UIScrollView"
        view.backgroundColor = .white
        
        view.addSubview(scrollView)
        scrollView.snp.makeConstraints { (make) in
            make.edges.equalTo(view)
        }
        
        
    }

    

}
