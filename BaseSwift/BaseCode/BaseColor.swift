//
//  BaseColor.swift
//  大恒固证Swift
//
//  Created by chenyuliang on 2018/3/14.
//  Copyright © 2018年 chenyuliang. All rights reserved.
//

import UIKit

//设置RGB颜色/设置RGBA颜色
//#define DHRGBColor(r, g, b) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1.0]

func RGBColor( red:CGFloat ,green:CGFloat ,blue:CGFloat,alpha:CGFloat) -> UIColor {
    return UIColor.init(red: red/255.0, green: green/255.0, blue: blue/255.0, alpha: alpha)
}

class BaseColor: UIColor {
    
    class func themeColor() -> UIColor {
        return RGBColor(red: 1, green: 132, blue: 141, alpha: 1.0)
    }

}
