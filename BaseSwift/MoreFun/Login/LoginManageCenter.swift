//
//  LoginManageCenter.swift
//  DHSwift
//
//  Created by chenyuliang on 2018/3/15.
//  Copyright © 2018年 chenyuliang. All rights reserved.
//

import UIKit

class LoginManageCenter: NSObject {
    
    private static let shareInstance = LoginManageCenter()
    class func shareManeger() ->LoginManageCenter {
        return shareInstance
    }
    
    //登录状态
    var isLoginFlag : Bool = false
    public func isLogin() -> Bool {
        return self.isLoginFlag
    }
    
    public func loginStateChange(flag:Bool) -> Void {
        self.isLoginFlag = flag
    }
    
}
