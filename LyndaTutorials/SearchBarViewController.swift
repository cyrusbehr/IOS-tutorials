//
//  SearchBarViewController.swift
//  LyndaTutorials
//
//  Created by Cyrus Behroozi on 2016-12-15.
//  Copyright © 2016 Cyrus Behroozi. All rights reserved.
//

import UIKit
import WebKit

class SearchBarViewController: UIViewController {

  @IBOutlet weak var textBox: UITextField!
  @IBOutlet weak var goButton: UIButton!
  var webView: WKWebView!
  
    override func viewDidLoad() {
        super.viewDidLoad()
      
      goButton.layer.cornerRadius = 5
      goButton.layer.borderWidth = 2
      goButton.layer.borderColor = UIColor.init(red: 0/255, green: 191/255, blue: 84/255, alpha: 0.8).cgColor
      goButton.addTarget(self, action: #selector(buttonPressed(button:)), for: .touchDown)
      goButton.addTarget(self, action: #selector(buttonReleased(button:)), for: .touchUpInside)
      

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
      
     // view.addConstraints([width,height,top])

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
  func buttonPressed(button:UIButton)  {
    button.backgroundColor = UIColor.init(red: 0/255, green: 191/255, blue: 84/255, alpha: 0.1)
  }
  
  func buttonReleased(button:UIButton) {
    button.backgroundColor = UIColor.clear
  }
  
  @IBAction func goButtonPressed(_ sender: Any) {
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
