//
//  ViewController.swift
//  UIImageViewExtension
//
//  Created by Kamil Pawlik on 23.09.2015.
//  Copyright © 2015 COREO. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var exampleImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        exampleImage.loadFromUrl(NSURL(string: "https://developer.apple.com/assets/elements/icons/128x128/swift.png")!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

