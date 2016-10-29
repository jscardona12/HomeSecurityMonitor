//
//  ViewController.swift
//  HomeSecurityMonitor
//
//  Created by Juan Cardona on 10/29/16.
//  Copyright © 2016 Juan Cardona. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var barMenu: UIStackView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        barMenu.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: 66)
        
        let v0 = ViewControllerMonitor(nibName: "ViewControllerMonitor", bundle: nil)
        self.addChildViewController(v0)
        self.scrollView.addSubview(v0.view)
        v0.didMove(toParentViewController: self)
        
        let v1 = ViewControllerChat(nibName: "ViewControllerChat", bundle: nil)
        var frame = v1.view.frame
        frame.origin.x = self.view.frame.width
        v1.view.frame = frame
        self.addChildViewController(v1)
        self.scrollView.addSubview(v1.view)
        v1.didMove(toParentViewController: self)
        
        let v2 = ViewControllerAlarm(nibName: "ViewControllerAlarm", bundle: nil)
        var frame1 = v2.view.frame
        frame1.origin.x = self.view.frame.width * 2
        v2.view.frame = frame1
        self.addChildViewController(v2)
        self.scrollView.addSubview(v2.view)
        v2.didMove(toParentViewController: self)
        
        self.scrollView.contentSize = CGSize(width:self.view.frame.width * 3 , height:self.view.frame.height)
        self.scrollView.bounces = false
        
        
        

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

