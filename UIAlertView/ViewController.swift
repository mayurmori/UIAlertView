//
//  ViewController.swift
//  UIAlertView
//
//  Created by Mayur Mori on 10/09/19.
//  Copyright © 2019 Mayur Mori. All rights reserved.
//

import UIKit

//  The delegate object needs to conform to the UIAlertViewDelegate protocol. Because the  view controller will act as the alert view's delegate, the ViewController class needs to conform to the UIAlertViewDelegate protocol.

class ViewController: UIViewController, UIAlertViewDelegate {
    
    // MARK: - IBOUTLET -
    @IBOutlet weak var btnClick4Alert: UIButton!
    
    //    The methods of the UIAlertViewDelegate protocol are defined as optional. The method you'll use most often is alertView(_:clickedButtonAtIndex:). This method is invoked when the user taps one of the alert view's buttons. This is what the implementation of the alertView(_:clickedButtonAtIndex:) method could look like.
    
    //    Note that: 'UIAlertView' was deprecated in iOS 9.0: UIAlertView is deprecated. Use UIAlertController with a preferredStyle of UIAlertControllerStyleAlert instead
    
    func alertView(_ alertView: UIAlertView, clickedButtonAt buttonIndex: Int) {
        if alertView.tag == 1 {
            if buttonIndex == 0 {
                print("The user is okay.")
            } else {
                print("The user is not okay.")
            }
        }
    }
    
    //    The initialization is straightforward. We provide a title and a message, pass in a delegate object, a title for the cancel button, and titles for any other buttons we'd like to include.
    
    @IBAction func btnClick4Alert(_ sender: UIButton) {
        
        // Initialize Alert View
        let alertView = UIAlertView(title: "Alert", message: "Are you okay?", delegate: self, cancelButtonTitle: "Yes", otherButtonTitles: "No")
        
        // Configure Alert View
        alertView.tag = 1
        
        // Show Alert View
        alertView.show()
    }
}
