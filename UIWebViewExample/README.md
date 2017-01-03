# UIWebViewExample

#This code uses UIWebView to create a simple URL in IOS (https://www.google.com)
#The important code is in ViewController.swift
#screen shot UIWebView.png
#tested in iPhone 6 Plus & 7 Plus

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


