//
//  LoginVC.swift
//  DHSwift
//
//  Created by chenyuliang on 2018/3/15.
//  Copyright © 2018年 chenyuliang. All rights reserved.
//

import UIKit
import SnapKit

class LoginVC: BaseVC {
    
    var model = LoginModel()
    var modelView = LoginView()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.view.backgroundColor = UIColor.gray
        
        self.view .addSubview(self.modelView)
        self.modelView.snp.makeConstraints { (make) in
            make.edges.equalToSuperview()
        }
        self.modelView.creatViews()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}




