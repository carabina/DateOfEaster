//
//  ViewController.swift
//  DateOfEaster
//
//  Created by Michał Nierebiński on 15.05.2017.
//  Copyright © 2017 Michał Nierebiński. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print(Date.easternEasterDate(year: 2022))
        print(Date.westernEasterDate(year: 2022))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

