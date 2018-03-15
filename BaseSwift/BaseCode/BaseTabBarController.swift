//
//  BaseTabBarController.swift
//  大恒固证Swift
//
//  Created by chenyuliang on 2018/3/14.
//  Copyright © 2018年 chenyuliang. All rights reserved.
//

import UIKit

class BaseTabBarController: UITabBarController {

    
    let NameArr = ["取证","资源管理","我的"]
    let imageArr = ["TabbarHomeGray","TabbarResourcesGray","TabbarPersonalCenterGray"]
    let imageSeleArr = ["TabbarHomeSele","TabbarResourcesSele","TabbarPersonalCenterSele"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.CreatTabBar()
        
        self.hidesBottomBarWhenPushed = true
        // Do any additional setup after loading the view.
       //self.automaticallyAdjustsScrollViewInsets = false 

    }

    func CreatTabBar(){
        
//        let vcA = ForensicsVC()
//        let vcB = ResourceListVC()
//        let vcC = PersonalCenterVC()
        
        let vcA = OneVC()
        let vcB = TwoVC()
        let vcC = ThreeVC()
        let NavA = BaseNavigationController.init(rootViewController: vcA);
        let NavB = BaseNavigationController.init(rootViewController: vcB);
        let NavC = BaseNavigationController.init(rootViewController: vcC);
        
        NavA.tabBarItem.title = NameArr[0]
        NavB.tabBarItem.title = NameArr[1]
        NavC.tabBarItem.title = NameArr[2]

        NavA.tabBarItem.image = UIImage.init(named: imageArr[0])
        NavB.tabBarItem.image = UIImage.init(named: imageArr[1])
        NavC.tabBarItem.image = UIImage.init(named: imageArr[2])
        
        NavA.tabBarItem.selectedImage = UIImage.init(named: imageSeleArr[0])
        NavB.tabBarItem.selectedImage = UIImage.init(named: imageSeleArr[1])
        NavC.tabBarItem.selectedImage = UIImage.init(named: imageSeleArr[2])
        
        vcA.title = NameArr[0]
        vcB.title = NameArr[1]
        vcC.title = NameArr[2]
        
        
        
        
        self.viewControllers = [NavA,NavB,NavC]
        
        
        self.tabBar.tintColor = BaseColor.themeColor()
        self.tabBar.backgroundColor = UIColor.white
        
        
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
