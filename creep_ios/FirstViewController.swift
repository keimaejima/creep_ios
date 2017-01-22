//
//  FirstViewController.swift
//  creep_ios
//
//  Created by 前島恵 on 2017/01/21.
//  Copyright © 2017年 keimaejima. All rights reserved.
//

import UIKit
import SnapKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.white
        
        let myButton = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 30))
        myButton.setTitle("ログインする", for: UIControlState.normal)
        myButton.setTitleColor(UIColor.black, for: UIControlState.normal)
        
        self.view.addSubview(myButton)
        myButton.snp_makeConstraints({ (make) -> Void in
            make.size.equalTo(CGSize(width: 140, height: 150))
            make.center.equalTo(CGPoint(x: 100, y: 100))
        })
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

