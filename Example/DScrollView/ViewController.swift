//
//  ViewController.swift
//  DScrollView
//
//  Created by sojoudMadfooatcom on 06/21/2020.
//  Copyright (c) 2020 sojoudMadfooatcom. All rights reserved.
//

import UIKit
import DScrollView
import SwiftUI
class ViewController: UIViewController {
    
    @IBSegueAction func showDetailsAc(_ coder: NSCoder) -> UIViewController? {
           let detailsView = BankTable.init(userID: 99)
       return UIHostingController(coder: coder, rootView: detailsView)
       }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //BankTable(userID: 90)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

