//
//  FirstCustomSegueUnwind.swift
//  moreviewdemo
//
//  Created by Chung-Chan Wu on 2017/7/26.
//  Copyright © 2017年 JNN Studio. All rights reserved.
//

import UIKit

class FirstCustomSegueUnwind: UIStoryboardSegue {

    override func perform() {
        // Assign the source and destination views to local variables.
        let secondVCView = self.source.view as UIView!
        let firstVCView = self.destination.view as UIView!
        
        let screenHeight = UIScreen.main.bounds.size.height
        
        let window = UIApplication.shared.keyWindow
        window?.insertSubview(firstVCView!, aboveSubview: secondVCView!)
        
        // 轉換動畫
        UIView.animate(withDuration: 0.4, animations: { () -> Void in
            firstVCView?.frame = (firstVCView?.frame)!.offsetBy(dx: 0.0, dy: screenHeight)
            secondVCView?.frame = (secondVCView?.frame.offsetBy(dx: 0.0, dy: screenHeight))!
            
        }) { (Finished) -> Void in
            self.source.dismiss(animated: false, completion: nil)
        }
    }
}
