//
//  WorkAnalytics.swift
//  WorkFram
//
//  Created by Nitanta Adhikari on 5/4/21.
//

import Foundation
import UIKit

@objc public class WorkAnalytics: NSObject {
    
    @objc public static let shared = WorkAnalytics()
    @objc public var debugLog:Bool = false

    private override init() {}
    
    @objc public func log(message: String) {
        print("Log message: ", message)
    }
    
    @objc public static func present(caller: UIViewController, delegate: WorkAnalyticsDelgate) {
        let viewController = RedView.viewController()
        viewController.delegate = delegate
        let navigationViewController = UINavigationController(rootViewController: viewController)
        
        navigationViewController.navigationBar.isTranslucent = false
        navigationViewController.navigationBar.barTintColor = .purple
        
        #if swift(>=4)
        let attribute = [NSAttributedString.Key.foregroundColor : UIColor.white]
            navigationViewController.navigationBar.titleTextAttributes = attribute
        #else
            let attribute = [NSForegroundColorAttributeName: UIColor.white]
            navigationViewController.navigationBar.titleTextAttributes = attribute
        #endif
        
        caller.present(navigationViewController, animated: true, completion: nil)
    }
}
