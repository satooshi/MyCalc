//
//  ViewController.swift
//  MyCalc
//
//  Created by 北村聡士 on 2018/08/19.
//  Copyright © 2018年 satooshi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var model = DiscountCalculator()

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

    @IBAction func tapNumberButton(_ sender: Any) {
        if let button = sender as? UIButton {
            if let number = button.currentTitle {
                let value = priceField.text! + number

                if let price = UInt64(value) {
                    priceField.text = "\(price)"
                }
            }
        }
    }

    @IBAction func tapClearButton(_ sender: Any) {
        priceField.text = "0"
    }

    @IBAction func restart(_ segue: UIStoryboardSegue) {
        priceField.text = "0"
        model.reset()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let viewController = segue.destination as! PercentageViewController
        if let price = UInt64(priceField.text!) {
            model.price = price
            viewController.model = model
        }
    }
}
