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
      webView = WKWebView(frame: CGRect(x:0, y:20, width:300, height:300))
      view.addSubview(webView)
      webView.loadHTMLString("<h1>Title</h1><p>Words</p>", baseURL: nil)
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
