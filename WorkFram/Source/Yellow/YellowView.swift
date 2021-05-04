//
//  YelloView.swift
//  WorkFram
//
//  Created by Nitanta Adhikari on 5/4/21.
//

import UIKit

class YelloView {
    
    public static func viewController() -> YellowViewController {
        let storyboard = UIStoryboard(name: "WorkView", bundle: bundle)
        let vc = storyboard.instantiateViewController(withIdentifier: "YellowViewController") as! YellowViewController
        return vc
    }
    
    private static var bundle:Bundle {
        let podBundle = Bundle(for: YellowViewController.self)
        return Bundle(url: podBundle.bundleURL)!
    }
}
