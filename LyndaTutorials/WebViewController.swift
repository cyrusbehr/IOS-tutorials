//
//  WebViewController.swift
//  LyndaTutorials
//
//  Created by Cyrus Behroozi on 2016-12-14.
//  Copyright © 2016 Cyrus Behroozi. All rights reserved.
//

import UIKit
import WebKit

class WebViewController: UIViewController {

  var webView: WKWebView!
  
    override func viewDidLoad() {
        super.viewDidLoad()
      
        // Do any additional setup after loading the view.
      webView = WKWebView()
      view.addSubview(webView)
      let url: URL = URL(string: "https://www.google.com")!
      let req: URLRequest = URLRequest(url: url)
      webView.load(req)
      
      webView.translatesAutoresizingMaskIntoConstraints = false //dont use the frame for the layout, use the autolayout constrains
      let width = NSLayoutConstraint(item: webView, attribute: .width, relatedBy: .equal, toItem: view, attribute: .width, multiplier: 1.0, constant: 0.0)
      let height = NSLayoutConstraint(item: webView, attribute: .height, relatedBy: .equal, toItem: view, attribute: .height, multiplier: 1.0, constant: -50.0)
      let top = NSLayoutConstraint(item: webView, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1.0, constant: 20)
      
      view.addConstraints([width,height,top])
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
