//
//  ViewController.swift
//  LyndaTutorials
//
//  Created by Cyrus Behroozi on 2016-12-14.
//  Copyright © 2016 Cyrus Behroozi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var showAlertButton: UIButton!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
    //Create a label programatically
    let label: UILabel = UILabel(frame: CGRect(x:20, y: 40, width: 300, height: 30))
    label.text = "frome code!"
    view.addSubview(label)
    
    //Creat a button programatically --> default background and text color is white
    let button: UIButton = UIButton(frame: CGRect(x: 20 , y: 100, width: 150, height: 40))
    button.setTitle("Code Button", for: .normal)
    button.backgroundColor = UIColor.green
    button.addTarget(self, action: #selector(didClick), for: UIControlEvents.touchUpInside)
    view.addSubview(button)
  }

  func didClick(btn: UIButton) {
  print("button was clicked")
    //we do not require the btn: UIButton but we pass this in so that we can reference the button
    btn.backgroundColor = UIColor.blue
  }
  
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  @IBAction func showAlertButtonPressed(_ sender: Any) {
    //Create alert controller
    let alert: UIAlertController = UIAlertController(title:"Title", message: "Message (note these values can be set to nil)", preferredStyle: .actionSheet)
    
    let action1: UIAlertAction = UIAlertAction(title: "Cancel", style: .cancel) { (_:UIAlertAction) in
    print("Put cancel actions here")
    }
    
    let action2: UIAlertAction = UIAlertAction(title: "Delete", style: .destructive) { (_:UIAlertAction) in
     print("put delete actions here")
    }
    
    alert.addAction(action1)
    alert.addAction(action2)
      
    self.present(alert, animated: true, completion: { 
      print("present complete")
    }

}

