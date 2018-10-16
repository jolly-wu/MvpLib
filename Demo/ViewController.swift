//
//  ViewController.swift
//  Demo
//
//  Created by jolly on 2018/8/23.
//  Copyright © 2018年 zktechnology. All rights reserved.
//

import UIKit

class ViewController:UIViewController  {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewDidAppear(_ animated: Bool) {
        performSegue(withIdentifier: "gotoPage1", sender: nil)

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

