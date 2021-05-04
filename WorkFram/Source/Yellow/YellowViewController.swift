//
//  YelloViewController.swift
//  WorkFram
//
//  Created by Nitanta Adhikari on 5/4/21.
//

import UIKit

class YellowViewController: UIViewController {
    
    @objc var delegate: WorkAnalyticsDelgate?

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func nextButton(_ sender: UIButton) {
        self.navigationController?.dismiss(animated: true, completion: { [weak self] in
            guard let self = self else { return }
            self.delegate?.navigationComplete()
        })
    }
}
