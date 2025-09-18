//
//  UIView+Layout.swift
//  TabBarColorDemo
//
//  Created by jingpengbo on 2025/9/18.
//

import UIKit

public extension UIView {

    @objc dynamic var du_left: CGFloat {
        set {
            var frame = self.frame
            frame.origin.x = newValue
            self.frame = frame
        }
        get {
            return self.frame.origin.x
        }
    }

    @objc dynamic var du_top: CGFloat {
        set {
            var frame = self.frame
            frame.origin.y = newValue
            self.frame = frame
        }
        get {
            return self.frame.origin.y
        }
    }

    @objc dynamic var du_right: CGFloat {
        set {
            var frame = self.frame
            frame.origin.x = newValue - frame.size.width
            self.frame = frame
        }
        get {
            return self.frame.origin.x + self.frame.size.width
        }
    }

    @objc dynamic var du_bottom: CGFloat {
        set {
            var frame = self.frame
            frame.origin.y = newValue - frame.size.height
            self.frame = frame
        }
        get {
            return self.frame.origin.y + self.frame.size.height
        }
    }

    @objc dynamic var du_centerX: CGFloat {
        set {
            self.center = CGPoint(x: newValue, y: self.center.y)
        }
        get {
            return self.center.x
        }
    }

    @objc dynamic var du_centerY: CGFloat {
        set {
            self.center = CGPoint(x: self.center.x, y: newValue)
        }
        get {
            return self.center.y
        }
    }

    @objc dynamic var du_width: CGFloat {
        set {
            var frame = self.frame
            frame.size.width = newValue
            self.frame = frame
        }
        get {
            return self.frame.size.width
        }
    }

    @objc dynamic var du_height: CGFloat {
        set {
            var frame = self.frame
            frame.size.height = newValue
            self.frame = frame
        }
        get {
            return self.frame.size.height
        }
    }

    @objc dynamic var du_origin: CGPoint {
        set {
            var frame = self.frame
            frame.origin = newValue
            self.frame = frame
        }
        get {
            return self.frame.origin
        }
    }

    @objc dynamic var du_originX: CGFloat {
        set {
            var frame = self.frame
            frame.origin = CGPoint(x: newValue, y: frame.origin.y)
            self.frame = frame
        }
        get {
            return self.frame.origin.x
        }
    }

    @objc dynamic var du_originY: CGFloat {
        set {
            var frame = self.frame
            frame.origin = CGPoint(x: frame.origin.x, y: newValue)
            self.frame = frame
        }
        get {
            return self.frame.origin.y
        }
    }

    @objc dynamic var du_size: CGSize {
        set {
            var frame = self.frame
            frame.size = newValue
            self.frame = frame
        }
        get {
            return self.frame.size
        }
    }

    @objc dynamic var du_borderColor: UIColor {
        set {
            self.layer.borderWidth = 1
            self.layer.borderColor = newValue.cgColor
        }
        get {
            return UIColor(cgColor: self.layer.borderColor ?? UIColor.black.cgColor)
        }
    }
}
