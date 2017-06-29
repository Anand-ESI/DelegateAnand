//
//  IndexViewController.swift
//  Delegate
//
//  Created by Prabhakar Annavi on 18/02/17.
//  Copyright © 2017 Eoxys Systems India. All rights reserved.
//

import UIKit

import SwipeableTabBarController

class IndexController: SwipeableTabBarController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        let controller = UIViewController()
        
        //Set any attributes of the view controller before it is displayed, this is where you would set the category text in your code.
        
        self.present(controller, animated: true, completion: nil)
        
        
        
        
//        let vc = OneViewController(nibName: "OneViewController", bundle: nil)
        
        
        let vc0 = UIViewController()
        
        
        self.addChildViewController(vc0)
        
        
        let DynamicView=UIView(frame: CGRect(x: CGFloat(100), y: CGFloat(200), width: CGFloat(100), height: CGFloat(100)))
        DynamicView.backgroundColor = UIColor.green
        DynamicView.layer.cornerRadius=25
        DynamicView.layer.borderWidth=2
        
        
        vc0.view.addSubview(DynamicView)        
        
//        vc0.view.frame = CGRect(x: CGFloat(0), y: CGFloat(0), width: CGFloat(self.view.bounds.size.width), height: CGFloat(self.view.bounds.size.height))
        
//        vc0.view.addSubview(DynamicView)
        
//        self.scrollView.addSubview(DynamicView)
        
        
        
        self.scrollView.addSubview(vc0.view)
        
        vc0.didMove(toParentViewController: self)
        
        
        
        let vc1 = UIViewController()
        
        
        var frame1 = vc1.view.frame
        frame1.origin.x = self.view.frame.size.width
        vc1.view.frame = frame1
        
        
        self.addChildViewController(vc1)
        
        let DynamicView2=UIView(frame: CGRect(x: CGFloat(100), y: CGFloat(200), width: CGFloat(100), height: CGFloat(100)))
        DynamicView2.backgroundColor = UIColor.red
        DynamicView2.layer.cornerRadius=25
        DynamicView2.layer.borderWidth=2
        vc0.view.addSubview(DynamicView2)
        
//        self.scrollView.addSubview(DynamicView2)
        self.scrollView.addSubview(vc0.view)
        
        vc1.didMove(toParentViewController: self)
        
        self.scrollView.contentSize = CGSize(width: CGFloat(self.view.frame.size.width * 2), height: CGFloat(self.view.frame.size.height - 64))
        
//        self.scrollView.contentSize = CGSize(self.view.frame.size.width * 2, self.view.frame.size.height - 64, CGFloat(0), CGFloat(0))
        
        
        
        
    }
    
    
}
