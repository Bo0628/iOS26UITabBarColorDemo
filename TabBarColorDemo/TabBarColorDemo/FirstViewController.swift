//
//  FirstViewController.swift
//  TabBarColorDemo
//
//  Created by jingpengbo on 2025/9/18.
//

import UIKit

class FirstViewController: UIViewController {

    lazy var button: UIButton = {
        let button = UIButton(type: .custom)
        let redRandom = CGFloat(arc4random() % 255)
        let greenRandom = CGFloat(arc4random() % 255)
        let blueRandom = CGFloat(arc4random() % 255)
        button.backgroundColor = UIColor(red: redRandom / 255, green: greenRandom / 255, blue: blueRandom / 255, alpha: 1)
        button.setTitle("跳转", for: .normal)
        let redRandom1 = CGFloat(arc4random() % 255)
        let greenRandom1 = CGFloat(arc4random() % 255)
        let blueRandom1 = CGFloat(arc4random() % 255)
        button.setTitleColor(UIColor(red: redRandom1 / 255, green: greenRandom1 / 255, blue: blueRandom1 / 255, alpha: 1), for: .normal)
        button.addTarget(self, action: #selector(buttonAction(_:)), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let redRandom = CGFloat(arc4random() % 255)
        let greenRandom = CGFloat(arc4random() % 255)
        let blueRandom = CGFloat(arc4random() % 255)
        self.view.backgroundColor = UIColor(red: redRandom / 255, green: greenRandom / 255, blue: blueRandom / 255, alpha: 1)
        // Do any additional setup after loading the view.
        self.view.addSubview(self.button)
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        self.button.frame = CGRectMake(50, 200, 50, 50)
    }
    
    @objc func buttonAction(_ sender: UIButton) {
        let vc = FirstViewController()
        vc.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(vc, animated: true)
    }

}

