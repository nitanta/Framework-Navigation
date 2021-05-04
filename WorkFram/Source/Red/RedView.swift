//
//  RedView.swift
//  WorkFram
//
//  Created by Nitanta Adhikari on 5/4/21.
//

import UIKit

class RedView {
    
    public static func viewController() -> RedViewController {
        let storyboard = UIStoryboard(name: "WorkView", bundle: bundle)
        let vc = storyboard.instantiateViewController(withIdentifier: "RedViewController") as! RedViewController
        return vc
    }
    
    private static var bundle:Bundle {
        let podBundle = Bundle(for: RedViewController.self)
        //let bundleURL = podBundle.url(forResource: "WorkFram", withExtension: "bundle")
        return Bundle(url: podBundle.bundleURL)!
    }
}
