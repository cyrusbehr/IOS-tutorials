//
//  tableViewController.swift
//  LyndaTutorials
//
//  Created by Cyrus Behroozi on 2016-12-16.
//  Copyright © 2016 Cyrus Behroozi. All rights reserved.
//

import UIKit

class tableViewController: UIViewController, UITableViewDataSource {
  
  let data: [[String]] = [["Item 1", "Item 2", "Item 3"],["Item A", "Item B", "Item C"]]
  let sub: [[String]] = [["sub 1", "sub 2", "sub 3"],["sub A", "sub B", "sub C"]]
  let headers: [String] = ["Numbered","Lettered"]
  
    override func viewDidLoad() {
        super.viewDidLoad()
      
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return data[section].count
  }
    
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
    cell.textLabel?.text = data[indexPath.section][indexPath.row]
    cell.detailTextLabel?.text = sub[indexPath.section][indexPath.row]
    cell.imageView?.image = UIImage(named: "star")
    
    let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: cell.frame.width, height: cell.frame.height))
    let image = UIImage(named: "cellBackground")
    imageView.image = image
    cell.backgroundView = UIView()
    cell.backgroundView!.addSubview(imageView)
    cell.backgroundColor = UIColor.clear
    
    return cell
  }
  
  func numberOfSections(in tableView: UITableView) -> Int {
    return data.count
  }
  
  func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
    return headers[section]
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
