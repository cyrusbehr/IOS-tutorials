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
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  @IBAction func showAlertButtonPressed(_ sender: Any) {
    //Create alert controller
    let alert: UIAlertController = UIAlertController(title:"Title", message: "Message (note these values can be set to nil)", preferredStyle: .alert)
    
    let action1: UIAlertAction = UIAlertAction(title: "Cancel", style: .cancel) { (_:UIAlertAction) in
    print("Put cancel actions here")
    }
    
    alert.addAction((action1)
    self.present(alert, animated: true, completion: { 
      print("present complete")
    })

}

