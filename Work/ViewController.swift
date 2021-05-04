//
//  ViewController.swift
//  Work
//
//  Created by Nitanta Adhikari on 5/4/21.
//

import UIKit
import WorkFram

class ViewController: UIViewController {
    
    let analytics = WorkAnalytics.shared

    override func viewDidLoad() {
        super.viewDidLoad()
        analytics.log(message: "This is a test log message.")
        
        // Do any additional setup after loading the view.
    }

    @IBAction func startFrameworkNavigation(_ sender: Any) {
        WorkAnalytics.present(caller: self, delegate: self)
    }
    
}

extension ViewController: WorkAnalyticsDelgate {
    func navigationComplete() {
        analytics.log(message: "Framework navigaiton complete")
    }

}

