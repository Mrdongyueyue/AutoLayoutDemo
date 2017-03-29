//
//  SKScrollViewController.swift
//  AutoLayoutDemo
//
//  Created by 董知樾 on 2017/3/28.
//  Copyright © 2017年 董知樾. All rights reserved.
//

import UIKit
import WebKit

class SKScrollViewController: UIViewController {

    let scrollView = UIScrollView()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "SnapKit-UIScrollView"
        view.backgroundColor = .white
        
        let webView = WKWebView()
        view.addSubview(webView)
        webView.snp.makeConstraints { (make) in
            make.edges.equalTo(view)
        }
        webView.load(URLRequest(url: URL(string: "http://www.jianshu.com/p/faeb86e1aa1a")!))
        
    }

    

}
