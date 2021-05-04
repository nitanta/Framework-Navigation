//
//  RedViewController.swift
//  WorkFram
//
//  Created by Nitanta Adhikari on 5/4/21.
//

import UIKit

class RedViewController: UIViewController {
    
    @objc var delegate: WorkAnalyticsDelgate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func nextButton(_ sender: UIButton) {
        let viewController = YelloView.viewController()
        viewController.delegate = delegate
        self.navigationController?.pushViewController(viewController, animated: true)
    }
}
