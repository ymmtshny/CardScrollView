//
//  ViewController.swift
//  cardScrollView
//
//  Created by Shinya Yamamoto on 2016/08/15.
//  Copyright © 2016年 Shinya Yamamoto. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIGestureRecognizerDelegate {

    var scrollView:UIScrollView!
    var width:CGFloat = 0
    var height:CGFloat = 0
    var margin:CGFloat = 25
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        scrollView = UIScrollView(frame: self.view.frame)
        width = self.view.frame.size.width * 0.8
        height = self.view.frame.size.width * 0.8
        margin = self.view.frame.size.width * 0.05
        
        var lastX:CGFloat = 0
        for _ in 0...10 {
            let view = UIView(frame: CGRectMake(lastX + margin,
                                                0,
                                                width,
                                                height))
            desingView(view)
            lastX += (width + margin)
            scrollView.addSubview(view)
        }
        
        scrollView.contentSize = CGSizeMake(lastX, height)
        scrollView.pagingEnabled = true
        
        self.view.addSubview(scrollView)
        
        scrollView.frame = CGRectMake(self.view.frame.size.width * 0.1 - margin,
                                      self.view.frame.size.height * 0.1,
                                      width + margin,
                                      height)
        scrollView.clipsToBounds = false
        scrollView.showsHorizontalScrollIndicator = false
    }
    
    
    func desingView(view: UIView) {
        
        view.backgroundColor = UIColor.blueColor()
        view.alpha = 0.3
        view.layer.cornerRadius = 10
        view.clipsToBounds = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

