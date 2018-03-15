//
//  LoginVC.swift
//  DHSwift
//
//  Created by chenyuliang on 2018/3/15.
//  Copyright © 2018年 chenyuliang. All rights reserved.
//

import UIKit

class LoginVC: BaseVC {
    
    var model = LoginModel()
    var modelView = LoginView()
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}


class LoginModel : NSObject {
    
    var userName : String
    var userPasswd : String
    
    override init() {
        userName = ""
        userPasswd = ""
    }
}



class LoginView: UIView ,UITextFieldDelegate{
   
    let loginButton = UIButton.init(type: UIButtonType.custom)
    let loginNameTF = UITextField.init()
    let loginPasswdTF = UITextField.init()
    
    
    
    
}


protocol BaseTextFieldDelegate :UITextFieldDelegate {
    
    
    
}



