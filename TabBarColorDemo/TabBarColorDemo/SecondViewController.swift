//
//  SecondViewController.swift
//  TabBarColorDemo
//
//  Created by jingpengbo on 2025/9/18.
//

import UIKit

class SecondViewController: UIViewController {
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.addSubview(self.scrollView)
        self.scrollView.addSubview(self.vcView1)
        self.scrollView.addSubview(self.vcView2)
        self.vcView1.addSubview(self.placeholdView)
        self.vcView1.addSubview(self.placeholdView2)
        self.vcView2.addSubview(self.placeholdView3)
        self.vcView2.addSubview(self.placeholdView4)
    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        self.scrollView.du_size = self.view.du_size
        if self.scrollView.contentSize.width != self.view.du_width * 2 {
            self.scrollView.contentSize = CGSize(width: self.view.du_width * 2, height: 0)
        }
        
        self.vcView1.du_size = self.view.du_size
        if self.vcView1.contentSize.height != self.view.du_height * 2 {
            self.vcView1.contentSize = CGSize(width: 0, height: self.view.du_height * 2)
        }
        
        self.vcView2.du_left = self.scrollView.du_width
        self.vcView2.du_size = self.view.du_size
        if self.vcView2.contentSize.height != self.view.du_height * 2 {
            self.vcView2.contentSize = CGSize(width: 0, height: self.view.du_height * 2)
        }
        
        self.placeholdView.du_width = 50
        self.placeholdView.du_height = 50
        self.placeholdView.du_top = 200
        self.placeholdView.du_centerX = self.scrollView.du_width / 2
        
        self.placeholdView2.du_size = self.placeholdView.du_size
        self.placeholdView2.du_centerX = self.placeholdView.du_centerX
        self.placeholdView2.du_top = self.vcView2.du_height + 20
        
        self.placeholdView3.du_width = 50
        self.placeholdView3.du_height = 50
        self.placeholdView3.du_top = 200
        self.placeholdView3.du_centerX = self.scrollView.du_width / 2
        
        self.placeholdView4.du_size = self.placeholdView.du_size
        self.placeholdView4.du_centerX = self.placeholdView.du_centerX
        self.placeholdView4.du_top = self.vcView2.du_height + 20
    }

    lazy var scrollView: UIScrollView = {
        let scroll = UIScrollView()
        scroll.backgroundColor = .red
        scroll.contentInset = .zero
        scroll.showsVerticalScrollIndicator = false
        scroll.showsHorizontalScrollIndicator = false
        scroll.contentInsetAdjustmentBehavior = .never
//        scroll.delegate = self
        scroll.isPagingEnabled = true
        if #available(iOS 26.0, *) {
            scroll.topEdgeEffect.isHidden = true
            scroll.bottomEdgeEffect.isHidden = true
        } else {
            // Fallback on earlier versions
        }
        return scroll
    }()
    
    var vcView1: UIScrollView = {
        let view = UIScrollView()
        view.backgroundColor = .black
        view.showsVerticalScrollIndicator = false
        view.showsHorizontalScrollIndicator = false
        view.accessibilityIdentifier = "vcView1"
        if #available(iOS 26.0, *) {
            view.bottomEdgeEffect.isHidden = true
        } else {
            // Fallback on earlier versions
        }
        return view
    }()
    
    var vcView2: UIScrollView = {
        let view = UIScrollView()
        view.backgroundColor = .white
        view.showsVerticalScrollIndicator = false
        view.showsHorizontalScrollIndicator = false
        view.accessibilityIdentifier = "vcView2"
        if #available(iOS 26.0, *) {
            view.bottomEdgeEffect.isHidden = true
        } else {
            // Fallback on earlier versions
        }
        return view
    }()
    
    var placeholdView: UIView = {
        let view = UIView()
        view.backgroundColor = .yellow
        view.accessibilityIdentifier = "placeholdView"
        return view
    }()
    
    var placeholdView2: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        view.accessibilityIdentifier = "placeholdView2"
        return view
    }()
    
    var placeholdView3: UIView = {
        let view = UIView()
        view.backgroundColor = .yellow
        view.accessibilityIdentifier = "placeholdView3"
        return view
    }()
    
    var placeholdView4: UIView = {
        let view = UIView()
        view.backgroundColor = .cyan
        view.accessibilityIdentifier = "placeholdView4"
        return view
    }()
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
