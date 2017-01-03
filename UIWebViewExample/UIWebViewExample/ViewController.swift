

//
//  ViewController.swift
//  UIWebViewExample
//
//  Created by Scott Maretick on 1/2/17.
//  Copyright © 2017 Scott Maretick. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //added this code
    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Your webView code goes here
        let url = URL(string: "https://www.google.com")
        if UIApplication.shared.canOpenURL(url!) {
            UIApplication.shared.open(url!, options: [:], completionHandler: nil)
            //If you want handle the completion block than
            UIApplication.shared.open(url!, options: [:], completionHandler: { (success) in
                print("Open url : \(success)")
            })
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
};
