//
//  ThirdViewController.swift
//  TabBarColorDemo
//
//  Created by jingpengbo on 2025/9/18.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let redRandom = CGFloat(arc4random() % 255)
        let greenRandom = CGFloat(arc4random() % 255)
        let blueRandom = CGFloat(arc4random() % 255)
        self.view.backgroundColor = UIColor(red: redRandom / 255, green: greenRandom / 255, blue: blueRandom / 255, alpha: 1)
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
