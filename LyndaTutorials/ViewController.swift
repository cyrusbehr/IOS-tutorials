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
  @IBOutlet weak var sliderBar: UISlider!
  @IBOutlet weak var progressBar: UIProgressView!
  @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
  @IBOutlet weak var segmentLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
    
    
    
    let codeButton: UIButton = UIButton(frame: CGRect(x: 20, y: 400, width: self.view.frame.width - 40, height: 50))
    codeButton.setTitle("Click Me", for: .normal)
    codeButton.addTarget(self, action: #selector(codeButtonPressed), for: .touchDown)
    codeButton.addTarget(self, action: #selector(codeButtonReleased(button:)), for: .touchUpInside)
    codeButton.setTitleColor(UIColor.init(red: 32/255, green: 183/255, blue: 252/255, alpha: 1), for: .normal)
    codeButton.backgroundColor = UIColor.clear
    codeButton.layer.cornerRadius = 5
    codeButton.layer.borderWidth = 2
    codeButton.layer.borderColor = UIColor.init(red: 32/255, green: 183/255, blue: 252/255, alpha: 1).cgColor
    view.addSubview(codeButton)
  
  }

  func didClick(btn: UIButton) {
  print("button was clicked")
    //we do not require the btn: UIButton but we pass this in so that we can reference the button
    btn.backgroundColor = UIColor.blue
  }
  
  //SWICH
  @IBAction func switchDidChange(_ sender: UISwitch) {
    if (activityIndicator.isAnimating){
      activityIndicator.stopAnimating()
    }else{
      activityIndicator.startAnimating()
    }
  }

  //SLIDER
  @IBAction func didMoveSlider(_ sender: UISlider) {
  progressBar.progress = sender.value/sender.maximumValue
  }
  
  //SEGMENT
  @IBAction func segmentDidChange(_ sender: UISegmentedControl) {
    let selectedIndex = sender.selectedSegmentIndex
    segmentLabel.text = sender.titleForSegment(at: selectedIndex)
  
  }
  
  //BUTTON RELEASED
  func codeButtonReleased(button:UIButton) {
    button.backgroundColor = UIColor.clear
  }
  
  //BUTTON PRESSED
  func codeButtonPressed(button: UIButton) {
    print("you pressed the button!")
    button.backgroundColor = UIColor.init(red: 32/255, green: 183/255, blue: 252/255, alpha: 0.3)
  }
  
  //ALERT-----------------------------------------
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
      
    self.present(alert, animated: true) {
      print("present complete")
    }

  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

}



