//
//  ThreeVC.swift
//  BaseSwift
//
//  Created by chenyuliang on 2018/3/15.
//  Copyright © 2018年 chenyuliang. All rights reserved.
//

import UIKit
import SnapKit

class ThreeVC: BaseVC {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        // Do any additional setup after loading the view.
        
        let loginButton = UIButton.init(type: UIButtonType.custom)
        self.view.addSubview(loginButton)
        
        loginButton.backgroundColor = UIColor.orange
        loginButton.setTitle("登录", for: UIControlState.normal)
        
        loginButton.snp.makeConstraints { (make ) in
            make.height.equalTo(100)
            make.width.equalTo(100)
            make.center.equalToSuperview()
        }
    
//        loginButton.addTarget(self, action: Selector(loginButtonAction()), for: UIControlEvents.touchUpInside)
        loginButton.addTarget(self, action: #selector(loginButtonAction), for:  UIControlEvents.touchUpInside)
    }

    @objc func loginButtonAction() {
        
        let loginShowVC = LoginVC()
        self.present(loginShowVC, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
