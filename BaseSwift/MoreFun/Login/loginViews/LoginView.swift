//
//  LoginView.swift
//  BaseSwift
//
//  Created by chenyuliang on 2018/3/15.
//  Copyright © 2018年 chenyuliang. All rights reserved.
//

import UIKit

protocol LoginViewDelegate {
    func loginAction()
    func resigeterAction()
}


class LoginView: UIView ,UITextFieldDelegate {
    

    let loginButton = UIButton.init(type: UIButtonType.custom)
    let registerButton = UIButton.init(type: UIButtonType.custom)
    let loginNameTF = UITextField.init()
    let loginPasswdTF = UITextField.init()
    
    var delegate :LoginViewDelegate
    
    let viewHight = 50
    let viewHightSp = 20
    let viewLeftSp = 15
    
    init(gate delegate:LoginViewDelegate) {
        self.delegate = delegate
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
//    var loginButton = UIButton.init(type: UIButtonType.custom)
//    var registerButton = UIButton.init(type: UIButtonType.custom)
//    var loginNameTF = UITextField.init()
//    var loginPasswdTF = UITextField.init()
//
//    var delegate :LoginViewDelegate
//
//
//    let viewHight = 50
//    let viewHightSp = 20
//    let viewLeftSp = 15
    
    func creatViews() -> Void {
        
        self.addSubview(loginNameTF)
        self.addSubview(loginPasswdTF)
        self.addSubview(loginButton)
        self.addSubview(registerButton)
        
        loginNameTF.backgroundColor = UIColor.white
        loginPasswdTF.backgroundColor = UIColor.white
        
        loginNameTF.borderStyle = UITextBorderStyle.roundedRect
        loginPasswdTF.borderStyle = UITextBorderStyle.roundedRect
        loginNameTF.delegate = self
        loginPasswdTF.delegate = self
        
        
        loginButton.snp.makeConstraints { (make) in
            make.height.equalTo(viewHight)
            make.left.equalToSuperview().offset(viewLeftSp)
            make.right.equalToSuperview().offset(-viewLeftSp)
            make.center.equalToSuperview() ;
        }
        
        registerButton.snp.makeConstraints { (make) in
            make.height.equalTo(viewHight)
            make.left.equalTo(loginButton)
            make.width.equalTo(loginButton).multipliedBy(0.4)
            make.top.equalTo(loginButton.snp.bottom).offset(viewHightSp)
        }
        
        loginPasswdTF.snp.makeConstraints { (make) in
            make.height.equalTo(viewHight)
            make.left.equalTo(loginButton)
            make.right.equalTo(loginButton)
            make.bottom.equalTo(loginButton.snp.top).offset(-viewHightSp)
        }
        
        loginNameTF.snp.makeConstraints { (make) in
            make.left.equalTo(loginPasswdTF)
            make.right.equalTo(loginPasswdTF)
            make.height.equalTo(loginPasswdTF)
            make.bottom.equalTo(loginPasswdTF.snp.top).offset(-viewHightSp)
        }
        
        loginButton.backgroundColor = UIColor.white
        loginButton.setTitleColor(BaseColor.themeColor(), for: UIControlState.normal)
        loginButton.setTitle("登录", for: UIControlState.normal)
        
        registerButton.backgroundColor = UIColor.white
        registerButton.setTitleColor(BaseColor.themeColor(), for: UIControlState.normal)
        registerButton.setTitle("注册", for: UIControlState.normal)
        
        loginNameTF.placeholder = "名称"
        loginPasswdTF.placeholder = "密码"
        
        loginButton.addTarget(self, action: #selector(loginButtonAction), for: UIControlEvents.touchUpInside)
        registerButton.addTarget(self, action: #selector(registerButtonAction), for: UIControlEvents.touchUpInside)
    }
    
    //mark: fun
    @objc func loginButtonAction() {
        
    }
    @objc func registerButtonAction() {
        
    }
    
    
    // mark - delegate
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        return true
    }
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
    }
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        return true
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        
    }
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        return true
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        return true
    }

}
