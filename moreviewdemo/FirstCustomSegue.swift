//
//  FirstCustomSegue.swift
//  moreviewdemo
//
//  Created by Chung-Chan Wu on 2017/7/26.
//  Copyright © 2017年 JNN Studio. All rights reserved.
//

import UIKit

class FirstCustomSegue: UIStoryboardSegue {

    override func perform() {
        // 指定來源與目標視圖給區域變數
        let firstVCView = self.source.view as UIView!
        let secondVCView = self.destination.view as UIView!
        
        // 取得畫面寬度與高度
        let screenWidth = UIScreen.main.bounds.size.width
        let screenHeight = UIScreen.main.bounds.size.height
        
        // 指定目標視圖的初始位置
        secondVCView?.frame = CGRect(x: 0.0, y: screenHeight, width: screenWidth, height: screenHeight)
        
        // 存取App的 key window 並插入目標視圖至目前視圖（來源視圖）上
        let window = UIApplication.shared.keyWindow
        window?.insertSubview(secondVCView!, aboveSubview: firstVCView!)
        
        // 轉換動畫
        UIView.animate(withDuration: 0.4, animations: { () -> Void in
            firstVCView?.frame = ((firstVCView?.frame)?.offsetBy(dx: 0.0, dy: -screenHeight))!
            secondVCView?.frame = (secondVCView?.frame.offsetBy(dx: 0.0, dy: -screenHeight))!
            
        }) { (Finished) -> Void in
            self.source.present(self.destination as UIViewController,
                                                            animated: false,
                                                            completion: nil)
        }

    }
}
