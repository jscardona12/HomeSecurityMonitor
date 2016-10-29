//
//  ViewControllerAlarm.swift
//  HomeSecurityMonitor
//
//  Created by Juan Cardona on 10/29/16.
//  Copyright © 2016 Juan Cardona. All rights reserved.
//

import UIKit

class ViewControllerAlarm: UIViewController {

    @IBOutlet weak var barMenu: UIStackView!
    
    @IBOutlet weak var monitorButton: UIButton!
    @IBOutlet weak var alarmButton: UIButton!
    @IBOutlet weak var chatButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        alarmButton.isEnabled=false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
