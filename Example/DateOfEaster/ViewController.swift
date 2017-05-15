//
//  ViewController.swift
//  DateOfEaster
//
//  Created by Michał Nierebiński on 15.05.2017.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print(String(describing: Date.easternEasterDate(year: 2022)))
        print(String(describing: Date.westernEasterDate(year: 2022)))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
