//
//  ViewController.swift
//  xibTest
//
//  Created by 黃毓皓 on 2017/4/6.
//  Copyright © 2017年 ice elson. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate
{

    @IBOutlet weak var myTableview: UITableView!
    var list = [Float]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       list.append(0.34)
        list.append(0.7)
        list.append(0.94)
        list.append(0.25)
        let nib = UINib(nibName: "myCell", bundle: nil)
        myTableview.register(nib, forCellReuseIdentifier: "Cell")
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTableview.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! myCell
        cell.label.text = String(list[indexPath.row])
        cell.progressView.progress = list[indexPath.row]
        return cell
        
      
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

