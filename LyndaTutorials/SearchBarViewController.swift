//
//  SearchBarViewController.swift
//  LyndaTutorials
//
//  Created by Cyrus Behroozi on 2016-12-15.
//  Copyright © 2016 Cyrus Behroozi. All rights reserved.
//

import UIKit
import WebKit

class SearchBarViewController: UIViewController, UITextFieldDelegate {
  
  
  @IBOutlet weak var textBox: UITextField!
  @IBOutlet weak var goButton: UIButton!
  var webView: WKWebView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    
    
    // Do any additional setup after loading the view.
    webView = WKWebView()
    view.addSubview(webView)
    
    webView.translatesAutoresizingMaskIntoConstraints = false //dont use the frame for the layout, use the autolayout constrains
    let width = NSLayoutConstraint(item: webView, attribute: .width, relatedBy: .equal, toItem: view, attribute: .width, multiplier: 1.0, constant: 0.0)
    let height = NSLayoutConstraint(item: webView, attribute: .height, relatedBy: .equal, toItem: view, attribute: .height, multiplier: 1.0, constant: -115)
    let top = NSLayoutConstraint(item: webView, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1.0, constant: 85)
    view.addConstraints([width,height,top])
    
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    print(" this method was called")
    let url: URL = URL(string: textField.text!)!
    let req: URLRequest = URLRequest(url: url)
    webView.load(req)
    textField.resignFirstResponder()
    return false
  }
  
  
  @IBAction func backButtonPressed(_ sender: Any) {
    webView.goBack()
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
