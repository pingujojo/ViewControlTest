//
//  ThirdViewController.swift
//  moreviewdemo
//
//  Created by Chung-Chan Wu on 2017/7/26.
//  Copyright © 2017年 JNN Studio. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var lblMessage: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let swipeGestureRecognizer: UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(ThirdViewController.showFirstViewController))
        swipeGestureRecognizer.direction = UISwipeGestureRecognizerDirection.up
        self.view.addGestureRecognizer(swipeGestureRecognizer)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func showFirstViewController() {
        self.performSegue(withIdentifier: "idSecondSegueUnwind", sender: self)
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
