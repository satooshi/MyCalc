//
//  ViewController.swift
//  MyCalc
//
//  Created by 北村聡士 on 2018/08/19.
//  Copyright © 2018年 satooshi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var priceField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

 
    // actions

    @IBAction func tap1Button(_ sender: Any) {
        tapNumberButton(number: "1")
    }
    
    @IBAction func tap2Button(_ sender: Any) {
        tapNumberButton(number: "2")
    }
    
    @IBAction func tap3Button(_ sender: Any) {
        tapNumberButton(number: "3")
    }
    
    @IBAction func tap4Button(_ sender: Any) {
        tapNumberButton(number: "4")
    }
    
    @IBAction func tap5Button(_ sender: Any) {
        tapNumberButton(number: "5")
    }
    
    @IBAction func tap6Button(_ sender: Any) {
        tapNumberButton(number: "6")
    }
    
    @IBAction func tap7Button(_ sender: Any) {
        tapNumberButton(number: "7")
    }
    
    @IBAction func tap8Button(_ sender: Any) {
        tapNumberButton(number: "8")
    }
    
    @IBAction func tap9Button(_ sender: Any) {
        tapNumberButton(number: "9")
    }
    
    @IBAction func tap0Button(_ sender: Any) {
        tapNumberButton(number: "0")
    }
    
    @IBAction func tap00Button(_ sender: Any) {
        tapNumberButton(number: "00")
    }
    
    @IBAction func tapClearButton(_ sender: Any) {
        priceField.text = "0"
    }
    
    func tapNumberButton(number: String) {
        let value = priceField.text! + number
        
        if let price = UInt64(value) {
            priceField.text = "\(price)"
        }
    }
}

