//
//  ViewController.swift
//  twelve
//
//  Created by cxm on 2018/11/16.
//  Copyright © 2018 cxm. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var offset = 2008 % 12
   
   
    @IBOutlet weak var yearOfBirth: UITextField!
    @IBOutlet weak var image: UIImageView!
    
override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        yearOfBirth.resignFirstResponder()
        
    }
    @IBAction func okTapped(_ sender: Any) {
        yearOfBirth.resignFirstResponder()
        if let year = yearOfBirth.text(){
            var imageNumber = (year - offset) % 12
            image.image = UIImage(named: String(imageNumber))
        }
        else {
    }
    
}
}
