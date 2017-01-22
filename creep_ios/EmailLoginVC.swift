//
//  EmailLoginVC.swift
//  creep_ios
//
//  Created by 前島恵 on 2017/01/22.
//  Copyright © 2017年 keimaejima. All rights reserved.
//

import UIKit

class EmailLoginVC: UIViewController, UITextFieldDelegate {
    
    private var emailTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emailTextField = UITextField()
        self.view.addSubview(emailTextField)
        emailTextField.snp.makeConstraints({ (make) -> Void in
            make.size.equalTo(CGSize(width: 140, height: 50))
            make.center.equalTo(CGPoint(x: 100, y: 300))
        })
        emailTextField.text = "メールアドレスを入力してくだい"
        emailTextField.delegate = self
        emailTextField.borderStyle = .roundedRect
        
        let loginButton = UIButton()
        loginButton.setTitle("ログインする", for: UIControlState.normal)
        loginButton.setTitleColor(UIColor.black, for: UIControlState.normal)
        loginButton.backgroundColor = UIColor.blue
        self.view.addSubview(loginButton)
        loginButton.snp.makeConstraints({ (make) -> Void in
            make.size.equalTo(CGSize(width: 140, height: 50))
            make.center.equalTo(self.view)
        })
        loginButton.addTarget(self, action: #selector(EmailLoginVC.myFunc(sender:)), for: .touchUpInside)
        loginButton.tag = 0
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func myFunc(sender: UIButton){
        switch sender.tag {
            case 0:
                EmailLoginCO.clickLogin(email: self.emailTextField.text!)
            default:
                break;
        }
    }
    
}
